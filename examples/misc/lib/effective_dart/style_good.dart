// ignore_for_file: annotate_overrides, type_annotate_public_apis, unused_element, unused_local_variable
import 'dart:io';
import 'dart:math';

void miscDeclAnalyzedButNotTested() {
  {
    // #docregion misc-names
    var item;

    HttpRequest httpRequest;

    void align(bool clearItems) {
      // ...
    }
    // #enddocregion misc-names
  }

  <DB, IOStream, Id>(uiHandler) => [
        // #docregion acronyms-and-abbreviations
        HttpConnectionInfo,
        uiHandler,
        IOStream,
        HttpRequest,
        Id,
        DB,
        // #enddocregion acronyms-and-abbreviations
      ];

  (bool isWeekDay) {
    // #docregion curly-braces
    if (isWeekDay) {
      print('Bike to work!');
    } else {
      print('Go dancing or read a book!');
    }
    // #enddocregion curly-braces
  };

  (arg, defaultValue) {
    // #docregion one-line-if
    if (arg == null) return defaultValue;
    // #enddocregion one-line-if
  };

  (dynamic overflowChars, dynamic other) {
    // #docregion one-line-if-wrap
    if (overflowChars != other.overflowChars) {
      return overflowChars < other.overflowChars;
    }
    // #enddocregion one-line-if-wrap
  };
}

//----------------------------------------------------------------------------

class SomeType {}

//----------------------------------------------------------------------------

// #docregion type-names
class SliderMenu {/* ... */}

class HttpRequest {/* ... */}

typedef bool Predicate<T>(T value);
// #enddocregion type-names

//----------------------------------------------------------------------------

const anArg = null;

// #docregion annotation-type-names
class Foo {
  const Foo([arg]);
}

@Foo(anArg)
class A {/* ... */}

@Foo()
class B {/* ... */}
// #enddocregion annotation-type-names

//----------------------------------------------------------------------------

// #docregion annotation-const
const foo = const Foo();

@foo
class C {/* ... */}
// #enddocregion annotation-const

//----------------------------------------------------------------------------

// #docregion const-names
const pi = 3.14;
const defaultTimeout = 1000;
final urlScheme = new RegExp('^([a-z]+):');

class Dice {
  static final numberGenerator = new Random();
}
// #enddocregion const-names
