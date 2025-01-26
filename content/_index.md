+++
title = "index"
insert_anchor_links = "right"
+++

## TEST
```cs
private async Task CheckViewDistanceAsync(CancellationToken token)
{
    int3 coord = GetChunkCoordFromVector3(PlayerTransform.position);
    List<int3> previouslyActiveChunks = new();
    previouslyActiveChunks.AddRange(activeChunks);
    activeChunks.Clear();

    playerLastChunkCoord = PlayerChunkCoord;

    List<int3> chunksToCheck = new();

    // Gather all potential chunks within view distance.
    for (var y = coord.y - VoxelData.ViewDistanceInChunks; y < coord.y + VoxelData.ViewDistanceInChunks; y++)
    for (var x = coord.x - VoxelData.ViewDistanceInChunks; x < coord.x + VoxelData.ViewDistanceInChunks; x++)
    for (var z = coord.z - VoxelData.ViewDistanceInChunks; z < coord.z + VoxelData.ViewDistanceInChunks; z++)
    {
        int3 chunkCoord = new(x, y, z);
        if (IsChunkInWorld(chunkCoord)) chunksToCheck.Add(chunkCoord);
    }

    // Sort chunks by distance from the player's current chunk position.
    chunksToCheck.Sort((a, b) =>
        math.distance(coord, a).CompareTo(math.distance(coord, b))
    );

    // Process chunks in batches to avoid frame freeze.
    const int batchSize = 10;
    for (var i = 0; i < chunksToCheck.Count; i++)
    {
        // Exit if the task is canceled
        if (token.IsCancellationRequested)
        {
            Debug.Log("Chunk processing canceled.");
            return;
        }

        int3 chunkCoord = chunksToCheck[i];

        if (!ChunkStorage.ContainsKey(chunkCoord))
            CreateNewChunk(chunkCoord.x, chunkCoord.y, chunkCoord.z);
        else if (!ChunkStorage[chunkCoord].IsActive)
            ChunkStorage[chunkCoord].IsActive = true;

        activeChunks.Add(chunkCoord);
        previouslyActiveChunks.Remove(chunkCoord);

        if (i % batchSize == 0)
        {
            await Task.Yield(); // Yield control to avoid frame freeze
        }
    }

    // Disable chunks that are no longer within view distance
    foreach (int3 chunk in previouslyActiveChunks) ChunkStorage[chunk].IsActive = false;

    previouslyActiveChunks.Clear();

    Debug.Log("Chunk processing complete.");
}
```