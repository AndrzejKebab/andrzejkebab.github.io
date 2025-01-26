+++
title = "Byte Extensions"
weight = 50
+++

# UtilityLibrary.Core

This utility library provides extension methods for byte operations, allowing you to perform various checks and conversions on byte values.

## PercentageOf

Calculates the percentage of a byte value relative to another byte value.

```csharp
byte part = // initialize your byte value;
byte whole = // initialize your byte value;

float percentage = part.PercentageOf(whole);
```

**Parameters:** 

- `part`: The byte value for which the percentage is calculated.
- `whole`: The byte value representing the whole or total.

**Returns:**

- `percentage`: A `float` value representing the percentage of the `part` relative to the `whole`.

## IsEven

Checks if a byte value is even.

```csharp
using UtilityLibrary.Core;

byte value = 4;
bool isEven = value.IsEven();
```

#### Parameters

- `value` (byte): The byte value to check.

#### Returns

- bool: `true` if the byte value is even; otherwise, `false`.

## IsOdd

Checks if a byte value is odd.

```csharp
using UtilityLibrary.Core;

byte value = 5;
bool isOdd = value.IsOdd();
```

#### Parameters

- `value` (byte): The byte value to check.

#### Returns

- bool: `true` if the byte value is odd; otherwise, `false`.

## ToInt

Converts a byte array to an integer.

```csharp
using UtilityLibrary.Core;

byte[] bytes = { 0, 0, 0, 42 };
int intValue = bytes.ToInt();
```

#### Parameters

- `bytes` (byte[]): The byte array to convert.
- `startIndex` (int, optional): The starting index in the byte array. Defaults to 0.

#### Returns

- int: The integer value converted from the byte array.

## ToLong

Converts a byte array to a long integer.

```csharp
using UtilityLibrary.Core;

byte[] bytes = { 0, 0, 0, 0, 0, 0, 0, 42 };
long longValue = bytes.ToLong();
```

#### Parameters

- `bytes` (byte[]): The byte array to convert.
- `startIndex` (int, optional): The starting index in the byte array. Defaults to 0.

#### Returns

- long: The long integer value converted from the byte array.

## ToChar

Converts a byte array to a character.

```csharp
using UtilityLibrary.Core;

byte[] bytes = { 65 };
char charValue = bytes.ToChar();
```

#### Parameters

- `bytes` (byte[]): The byte array to convert.
- `startIndex` (int, optional): The starting index in the byte array. Defaults to 0.

#### Returns

- char: The character value converted from the byte array.

## ToFloat

Converts a byte array to a single-precision floating-point number.

```csharp
using UtilityLibrary.Core;

byte[] bytes = { 0, 0, 0, 42 };
float floatValue = bytes.ToFloat();
```

#### Parameters

- `bytes` (byte[]): The byte array to convert.
- `startIndex` (int, optional): The starting index in the byte array. Defaults to 0.

#### Returns

- float: The float value converted from the byte array.

## ToDouble

Converts a byte array to a double-precision floating-point number.

```csharp
using UtilityLibrary.Core;

byte[] bytes = { 0, 0, 0, 0, 0, 0, 0, 42 };
double doubleValue = bytes.ToDouble();
```

#### Parameters

- `bytes` (byte[]): The byte array to convert.
- `startIndex` (int, optional): The starting index in the byte array. Defaults to 0.

#### Returns

- double: The double value converted from the byte array.

## ToBoolean

Converts a byte array to a boolean value.

```csharp
using UtilityLibrary.Core;

byte[] bytes = { 1 };
bool booleanValue = bytes.ToBoolean();
```

#### Parameters

- `bytes` (byte[]): The byte array to convert.
- `startIndex` (int, optional): The starting index in the byte array. Defaults to 0.

#### Returns

- bool: The boolean value converted from the byte array.

## ToString

Converts a byte array to a hexadecimal string.

```csharp
using UtilityLibrary.Core;

byte[] bytes = { 10, 20, 30 };
string stringValue = bytes.ToString();
```

#### Parameters

- `bytes` (byte[]): The byte array to convert.
- `startIndex` (int, optional): The starting index in the byte array. Defaults to 0.

#### Returns

- string: The hexadecimal string representation of the byte array.

## ToType

Converts a byte array to a specified type.

```csharp
using UtilityLibrary.Core;

byte[] bytes = { /* ... */ };
SomeType result = bytes.ToType<SomeType>();
```

#### Parameters

- `bytes` (byte[]): The byte array to convert.

#### Returns

- T: The object of the specified type converted from the byte array.