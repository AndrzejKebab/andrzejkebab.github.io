+++
title = "Float Extensions"
weight = 50
+++

# UtilityLibrary.Core

This utility library provides extension methods for float values to perform various operations.

## `PercentageOf`

Calculates the percentage of a float value relative to another float value.

```csharp
float part = // initialize your float value;
float whole = // initialize your float value;

float percentage = part.PercentageOf(whole);
```

**Parameters:** 

- `part`: The float value for which the percentage is calculated.
- `whole`: The float tvalue representing the whole or total.

**Returns:**

- `percentage`: A `float` value representing the percentage of the `part` relative to the `whole`.

## Abs

### `Abs`

Returns the absolute value of the given float value.

```csharp
using UtilityLibrary.Core;

float value = -5.0f;
float absoluteValue = value.Abs();
```

#### Parameters

- `value` (float): The float value to calculate the absolute value for.

#### Returns

- float: The absolute value of the float value.

### `Abs` (IEnumerable)

Returns a sequence of absolute values for each float value in the given enumerable.

```csharp
using UtilityLibrary.Core;

IEnumerable<float> values = new List<float> { -5.0f, 10.0f, -3.0f };
IEnumerable<float> absoluteValues = values.Abs();
```

#### Parameters

- `values` (IEnumerable<float>): The enumerable containing float values.

#### Returns

- IEnumerable<float>: A sequence of absolute values for each float value in the input enumerable.

## Clamp

### `ClampMin0`

Clamps the float value to a minimum of 0.

```csharp
using UtilityLibrary.Core;

float value = -5.0f;
float result = value.ClampMin0();
```

#### Parameters

- `value` (float): The float value to clamp.

#### Returns

- float: The clamped value with a minimum of 0.

### `ClampMin`

Clamps the float value to a specified minimum.

```csharp
using UtilityLibrary.Core;

float value = -5.0f;
float min = 0.0f;
float result = value.ClampMin(min);
```

#### Parameters

- `value` (float): The float value to clamp.
- `min` (float): The minimum value to clamp to.

#### Returns

- float: The clamped value with a minimum of the specified value.

### `ClampMax0`

Clamps the float value to a maximum of 0.

```csharp
using UtilityLibrary.Core;

float value = 5.0f;
float result = value.ClampMax0();
```

#### Parameters

- `value` (float): The float value to clamp.

#### Returns

- float: The clamped value with a maximum of 0.

### `ClampMax`

Clamps the float value to a specified maximum.

```csharp
using UtilityLibrary.Core;

float value = 15.0f;
float max = 10.0f;
float result = value.ClampMax(max);
```

#### Parameters

- `value` (float): The float value to clamp.
- `max` (float): The maximum value to clamp to.

#### Returns

- float: The clamped value with a maximum of the specified value.

### `Clamp01`

Clamps the float value to the range [0, 1].

```csharp
using UtilityLibrary.Core;

float value = 1.5f;
float result = value.Clamp01();
```

#### Parameters

- `value` (float): The float value to clamp.

#### Returns

- float: The clamped value within the range [0, 1].

### `Clamp`

Clamps the float value within a specified range.

```csharp
using UtilityLibrary.Core;

float value = 15.0f;
float min = 10.0f;
float max = 20.0f;
float result = value.Clamp(min, max);
```

#### Parameters

- `value` (float): The float value to clamp.
- `min` (float): The minimum value of the range.
- `max` (float): The maximum value of the range.

#### Returns

- float: The clamped value within the specified range.

## Round

### `RoundDecimalPoints`

Rounds a float value to a specified number of decimal points.

```csharp
using UtilityLibrary.Core;

float value = 123.4567f;
int decimalPoints = 2;
float result = value.RoundDecimalPoints(decimalPoints);
```

#### Parameters

- `value` (float): The float value to round.
- `decimalPoints` (int): The number of decimal points to round to.

#### Returns

- float: The rounded float value.

### `RoundToTwoDecimalPoints`

Rounds a float value to two decimal points.

```csharp
using UtilityLibrary.Core;

float value = 123.4567f;
float result = value.RoundToTwoDecimalPoints();
```

#### Parameters

- `value` (float): The float value to round.

#### Returns

- float: The rounded float value.

## Range

### `IsInRange`

Determines whether a float value is within a specified range.

```csharp
using UtilityLibrary.Core;

float value = 15.0f;
float minValue = 10.0f;
float maxValue = 20.0f;
bool isInRange = value.IsInRange(minValue, maxValue);
```

#### Parameters

- `value` (float): The float value to check.
- `min` (float): The minimum value of the range.
- `max` (float): The maximum value of the range.

#### Returns

- bool: `True` if the float value is within the range; otherwise, `False`.

### `InRange`

Returns the float value if it is within a specified range; otherwise, returns a default value.

```csharp
using UtilityLibrary.Core;

float value = 25.0f;
float minValue = 10.0f;
float maxValue = 20.0f;
float defaultValue = -1.0f;
float result = value.InRange(minValue, maxValue, defaultValue);
```

#### Parameters

- `value` (float): The float value to check.
- `min` (float): The minimum value of the range.
- `max` (float): The maximum value of the range.
- `defaultValue` (float): The default value to return if the float value is not within the range.

#### Returns

- float: The float value if it is within the range; otherwise, the default value.

## TimeSpan

### `ToDays`

Converts a float value to a TimeSpan representing days.

```csharp
using UtilityLibrary.Core;

float value = 2.5f;
TimeSpan result = value.ToDays();
```

#### Parameters

- `value` (float): The float value to convert.

#### Returns

- TimeSpan: A TimeSpan that represents the specified number of days.

### `ToHours`

Converts a float value to a TimeSpan representing hours.

```csharp
using UtilityLibrary.Core;

float value = 3.5f;
TimeSpan result = value.ToHours();
```

#### Parameters

- `value` (float):

 The float value to convert.

#### Returns

- TimeSpan: A TimeSpan that represents the specified number of hours.

### `ToMinutes`

Converts a float value to a TimeSpan representing minutes.

```csharp
using UtilityLibrary.Core;

float value = 75.0f;
TimeSpan result = value.ToMinutes();
```

#### Parameters

- `value` (float): The float value to convert.

#### Returns

- TimeSpan: A TimeSpan that represents the specified number of minutes.

### `ToSeconds`

Converts a float value to a TimeSpan representing seconds.

```csharp
using UtilityLibrary.Core;

float value = 120.5f;
TimeSpan result = value.ToSeconds();
```

#### Parameters

- `value` (float): The float value to convert.

#### Returns

- TimeSpan: A TimeSpan that represents the specified number of seconds.

### `ToMilliseconds`

Converts a float value to a TimeSpan representing milliseconds.

```csharp
using UtilityLibrary.Core;

float value = 1500.75f;
TimeSpan result = value.ToMilliseconds();
```

#### Parameters

- `value` (float): The float value to convert.

#### Returns

- TimeSpan: A TimeSpan that represents the specified number of milliseconds.