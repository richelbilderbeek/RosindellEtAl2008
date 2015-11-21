//---------------------------------------------------------------------------
/*
RosindellEtAl2008, refactoring an extension of Rosindel at al., 2008 [1]
Copyright (C) 2015 Richel Bilderbeek
Original version by James Rosindell

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
*/
//---------------------------------------------------------------------------
//From http://www.richelbilderbeek.nl/ToolRosindellEtAl2008.htm
//
//Article with original code:
//
// [1] Rosindell, James, Yan Wong, and Rampal S. Etienne.
//     "A coalescence approach to spatial neutral ecology."
//      Ecological Informatics 3.3 (2008): 259-271.
//---------------------------------------------------------------------------
#ifndef NRRAND_H
#define NRRAND_H

class NRrand
{
public:
  NRrand(const int seed) noexcept;
  // returns an integer between 0 and max
  int GetRandomInt(const int max) noexcept;
  // returns normal deviates
  double GetRandomNormal() noexcept;
private:
  // returns a uniform random number in (0,1)
  double GetRandomFraction() noexcept;

  // the last result (for normal deviates)
  double m_lastresult;
  // when doing normal deviates and values are in pairs
  // true when a new pair is needed, false when lastresult can be used
  bool m_normflag;
};

#endif // NRRAND_H
