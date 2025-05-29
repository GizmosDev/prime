## 0.0.1-alpha.1

* Initial pre-release

## 0.0.1-alpha.2

### Additions:

#### Extensions:
  * `NumPrime`:
    * `highest`: Instance method that returns the highest value of `this` or `other`.
    * `lowest`: Instance method that returns the lowest value of `this` or `other`.
    * `inBetween`: Instance method that checks if `this` is between two specified values.

## 0.0.1-alpha.3

### Notes:
  * Dropped dependency `intl` down to `^0.18.0` (from `^0.18.1`) to avoid conflicts.
  
### Additions:

#### Extensions:
  * `IterableStringPrime`:
    * `whereNotEmpty`: Instance method that returns all non-empty values in the source collection.

  * `IterableOptionalStringPrime`:
    * `whereNotEmpty`: Instance method that returns all non-empty values in the source collection.

## 0.0.1-alpha.4

### Notes:
  * Added default values to the `parseOrDefault` `defaultValue` parameters.
  * Renamed the `build.sh` script to `prebuild.sh` to be more accurate.
  
### Additions:

#### Extensions:
  * `IntPrime`:
    * `parseOrNull`: Static method that parses the given input to an `int` if possible, otherwise returns `null`.
    * `parseOrDefault`: Static method that parses the given input to an `int` if possible, otherwise returns `defaultValue`.

  * `DoublePrime`:
    * `parseOrNull`: Static method that parses the given input to a `double` if possible, otherwise returns `null`.
    * `parseOrDefault`: Static method that parses the given input to a `double` if possible, otherwise returns `defaultValue`.

## 0.0.1-alpha.5

### Notes:
  * Bumped dependency on `intl` to `0.19.0`

### Additions:

#### Extensions:
  * `ListPrime`:
    * `containsAny`: A class method to check if a `List<E>` includes any elements of another `List<E>`.


## 0.1.0-alpha.6

### Notes:
  * Bumped sdk requirements to `>=3.6.0 <4.0.0`
  * Bumped dependency on `intl` to `0.20.1`

### Additions:

#### Extensions:


## 0.2.0

### Notes:
  * Bumped dependencies
  * Dropped `-alpha` pre-release tag in the version number

### Additions:

#### Extensions:
