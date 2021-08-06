// Copyright (c) 2018, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a CC BY-SA 3.0-style license
// that can be found in the LICENSE file.

part of periodic_table;

/// Standard matter phases.
enum MatterPhase { solid, liquid, gas }

class ChemicalElement {
  // General identification
  final String name;
  final String symbol;
  final String category;
  final String appearance;
  final MatterPhase stpPhase;

  // Theoretical properties
  final int number, period;
  final int row, column;
  final List<int> shells;

  // Empirical properties
  final num atomicMass;
  final num? molecularDensity;
  final num? heatCapacity;
  final num? meltingPoint;
  final num? boilingPoint;

  /*// Historical properties
  final String discoveredBy;
  final String namedBy;
  final String summary;*/

  const ChemicalElement(
      {required this.name,
      required this.symbol,
      required this.category,
      required this.appearance,
      required this.stpPhase,
      required this.number,
      required this.period,
      required this.row,
      required this.column,
      required this.shells,
      required this.atomicMass,
      this.molecularDensity,
      this.heatCapacity,
      this.meltingPoint,
      this.boilingPoint});

  /// Currently we have no separate group data. But generally it should be the
  /// same as the column.
  int get group => column;
}
