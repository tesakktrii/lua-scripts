local API = require("api")


local uncreachablepoints = {
    {x = -5, y = -14},
    {x = -4, y = -14},
    {x = -4, y = -15},
    {x = -5, y = -15},
    {x = -6, y = -16},
    {x = -5, y = -16},
    {x = -9, y = -8},
    {x = -9, y = -7},
    {x = -8, y = -6},
    {x = -9, y = -5},
    {x = -9, y = -4},
    {x = -8, y = -4},
    {x = -8, y = -5},
    {x = -14, y = -10},
    {x = -15, y = -10},
}
local findzukkx = -1
local findzukky = -1
local notcheckactionforthatlong = API.SystemTime()
local constantneedforprayers = API.SystemTime()
local savedecidedprayer = 0
local checkisreallyoutofcoordinates = API.SystemTime()
local countneedforprayer = 0
local Southeastcorner = {
    {x = 10, y = -36},
    {x = 10, y = -35},
    {x = 10, y = -34},
    {x = 10, y = -33},
    {x = 10, y = -32},
    {x = 10, y = -31},
    {x = 10, y = -30},
    {x = 10, y = -29},
    {x = 9, y = -29},
    {x = 11, y = -29},
    {x = 12, y = -29},
    {x = 13, y = -29},
    {x = 14, y = -29},
    {x = 15, y = -29},
    {x = 15, y = -30},
    {x = 14, y = -30},
    {x = 13, y = -30},
    {x = 12, y = -30},
    {x = 11, y = -30},
    {x = 11, y = -31},
    {x = 12, y = -31},
    {x = 13, y = -31},
    {x = 14, y = -31},
    {x = 15, y = -31},
    {x = 15, y = -32},
    {x = 14, y = -32},
    {x = 13, y = -32},
    {x = 12, y = -32},
    {x = 11, y = -32},
    {x = 11, y = -33},
    {x = 12, y = -33},
    {x = 13, y = -33},
    {x = 13, y = -34},
    {x = 12, y = -34},
    {x = 11, y = -34},
    {x = 11, y = -35},
}
local Northwestcorner = {
    {x = -6, y = -15},
    {x = -7, y = -15},
    {x = -8, y = -15},
    {x = -9, y = -15},
    {x = -10, y = -15},
    {x = -11, y = -15},
    {x = -12, y = -15},
    {x = -13, y = -15},
    {x = -14, y = -15},
    {x = -15, y = -15},
    {x = -15, y = -16},
    {x = -14, y = -16},
    {x = -13, y = -16},
    {x = -12, y = -16},
    {x = -11, y = -16},
    {x = -10, y = -16},
    {x = -9, y = -16},
    {x = -8, y = -16},
    {x = -7, y = -16},
    {x = -7, y = -14},
    {x = -6, y = -14},
    {x = -8, y = -14},
    {x = -9, y = -14},
    {x = -10, y = -14},
    {x = -11, y = -14},
    {x = -12, y = -14},
    {x = -13, y = -14},
    {x = -14, y = -14},
    {x = -15, y = -14},
    {x = -15, y = -13},
    {x = -14, y = -13},
    {x = -13, y = -13},
    {x = -12, y = -13},
    {x = -11, y = -13},
    {x = -10, y = -13},
    {x = -9, y = -13},
    {x = -8, y = -13},
    {x = -7, y = -13},
    {x = -6, y = -13},
    {x = -6, y = -12},
    {x = -7, y = -12},
    {x = -8, y = -12},
    {x = -9, y = -12},
    {x = -10, y = -12},
    {x = -11, y = -12},
    {x = -12, y = -12},
    {x = -13, y = -12},
    {x = -14, y = -12},
    {x = -15, y = -12},
    {x = -15, y = -11},
    {x = -14, y = -11},
    {x = -13, y = -11},
    {x = -12, y = -11},
    {x = -11, y = -11},
    {x = -10, y = -11},
    {x = -9, y = -11},
    {x = -8, y = -11},
    {x = -7, y = -11},
    {x = -6, y = -11},
    {x = -6, y = -10},
    {x = -7, y = -10},
    {x = -8, y = -10},
    {x = -9, y = -10},
    {x = -10, y = -10},
    {x = -11, y = -10},
    {x = -12, y = -10},
    {x = -13, y = -10},
    {x = -13, y = -9},
    {x = -12, y = -9},
    {x = -11, y = -9},
    {x = -10, y = -9},
    {x = -9, y = -9},
    {x = -8, y = -9},
    {x = -7, y = -9},
    {x = -6, y = -9},
    {x = -10, y = -8},
    {x = -11, y = -8},
    {x = -12, y = -8},
    {x = -13, y = -8},
    {x = -12, y = -7},
    {x = -11, y = -7},
    {x = -10, y = -7},
    {x = -10, y = -6},
    {x = -11, y = -6},
    {x = -9, y = -6},
    {x = -7, y = -5},
    {x = -6, y = -5},
    {x = -6, y = -6},
    {x = -7, y = -6},
    {x = -7, y = -7},
    {x = -6, y = -7},
    {x = -8, y = -7},
    {x = -8, y = -8},
    {x = -7, y = -8},
    {x = -6, y = -8},
}
local yourgoingxxx2 = -1
local yourgoingxxy2 = -1
local coordinatesTable = {
    {x = 14, y = -33},
    {x = 10, y = -36},
    {x = -14, y = -12},
    {x = -13, y = -12},
    {x = -12, y = -12},
    {x = -10, y = -12},
    {x = -9, y = -12},
    {x = -8, y = -12},
    {x = -7, y = -12},
    {x = -6, y = -12},
    {x = -5, y = -12},
    {x = -4, y = -12},
    {x = -3, y = -12},
    {x = -2, y = -12},
    {x = -1, y = -12},
    {x = 0, y = -12},
    {x = 1, y = -12},
    {x = 2, y = -12},
    {x = 3, y = -12},
    {x = 4, y = -12},
    {x = 5, y = -12},
    {x = 6, y = -12},
    {x = 7, y = -12},
    {x = 8, y = -12},
    {x = 9, y = -12},
    {x = 10, y = -12},
    {x = 11, y = -12},
    {x = 12, y = -12},
    {x = 13, y = -12},
    {x = 14, y = -12},
    {x = 15, y = -12},
    {x = -1, y = -8},
    {x = 0, y = -8},
    {x = 0, y = -7},
    {x = -1, y = -7},
    {x = -2, y = -7},
    {x = -3, y = -7},
    {x = -4, y = -7},
    {x = -5, y = -7},
    {x = -6, y = -7},
    {x = -7, y = -7},
    {x = -8, y = -7},
    {x = -8, y = -8},
    {x = -8, y = -9},
    {x = -8, y = -10},
    {x = -8, y = -11},
    {x = -9, y = -11},
    {x = -10, y = -11},
    {x = -11, y = -11},
    {x = -12, y = -11},
    {x = -12, y = -10},
    {x = -12, y = -9},
    {x = -13, y = -9},
    {x = -12, y = -8},
    {x = -11, y = -8},
    {x = -10, y = -8},
    {x = -10, y = -7},
    {x = -10, y = -6},
    {x = -9, y = -6},
    {x = -11, y = -6},
    {x = -11, y = -7},
    {x = -12, y = -7},
    {x = -13, y = -8},
    {x = -13, y = -10},
    {x = -13, y = -11},
    {x = -14, y = -11},
    {x = -15, y = -12},
    {x = -15, y = -11},
    {x = -7, y = -11},
    {x = -6, y = -11},
    {x = -5, y = -11},
    {x = -4, y = -11},
    {x = -3, y = -11},
    {x = -2, y = -11},
    {x = -1, y = -11},
    {x = 0, y = -11},
    {x = 1, y = -11},
    {x = 2, y = -11},
    {x = 3, y = -11},
    {x = 4, y = -11},
    {x = 5, y = -11},
    {x = 6, y = -11},
    {x = 7, y = -11},
    {x = 8, y = -11},
    {x = 9, y = -11},
    {x = 10, y = -11},
    {x = 11, y = -11},
    {x = 12, y = -11},
    {x = 13, y = -11},
    {x = 14, y = -11},
    {x = 15, y = -11},
    {x = 14, y = -10},
    {x = 15, y = -10},
    {x = 13, y = -10},
    {x = 12, y = -10},
    {x = 11, y = -10},
    {x = 10, y = -10},
    {x = 9, y = -10},
    {x = 8, y = -10},
    {x = 7, y = -10},
    {x = 6, y = -10},
    {x = 5, y = -10},
    {x = 4, y = -10},
    {x = 3, y = -10},
    {x = 2, y = -10},
    {x = 1, y = -10},
    {x = 0, y = -10},
    {x = -1, y = -10},
    {x = -2, y = -10},
    {x = -3, y = -10},
    {x = -4, y = -10},
    {x = -5, y = -10},
    {x = -6, y = -10},
    {x = -7, y = -10},
    {x = -9, y = -10},
    {x = -10, y = -10},
    {x = -11, y = -10},
    {x = -11, y = -9},
    {x = -10, y = -9},
    {x = -9, y = -9},
    {x = -7, y = -9},
    {x = -6, y = -9},
    {x = -5, y = -9},
    {x = -4, y = -9},
    {x = -3, y = -9},
    {x = -2, y = -9},
    {x = -1, y = -9},
    {x = 0, y = -9},
    {x = 1, y = -9},
    {x = 2, y = -9},
    {x = 3, y = -9},
    {x = 4, y = -9},
    {x = 5, y = -9},
    {x = 7, y = -9},
    {x = 8, y = -9},
    {x = 9, y = -9},
    {x = 10, y = -9},
    {x = 11, y = -9},
    {x = 12, y = -9},
    {x = 13, y = -9},
    {x = 14, y = -9},
    {x = 13, y = -8},
    {x = 12, y = -8},
    {x = 11, y = -8},
    {x = 10, y = -8},
    {x = 9, y = -8},
    {x = 8, y = -8},
    {x = 7, y = -8},
    {x = 7, y = -7},
    {x = 8, y = -7},
    {x = 9, y = -7},
    {x = 10, y = -7},
    {x = 11, y = -7},
    {x = 12, y = -7},
    {x = 11, y = -6},
    {x = 10, y = -6},
    {x = 9, y = -6},
    {x = 8, y = -6},
    {x = 7, y = -6},
    {x = 7, y = -5},
    {x = 8, y = -5},
    {x = 9, y = -5},
    {x = 10, y = -5},
    {x = 9, y = -4},
    {x = 8, y = -4},
    {x = 7, y = -4},
    {x = 4, y = -8},
    {x = 3, y = -8},
    {x = 2, y = -8},
    {x = 1, y = -8},
    {x = -2, y = -8},
    {x = -3, y = -8},
    {x = -4, y = -8},
    {x = -5, y = -8},
    {x = -6, y = -8},
    {x = -7, y = -8},
    {x = 1, y = -7},
    {x = 2, y = -7},
    {x = 3, y = -7},
    {x = 4, y = -7},
    {x = 5, y = -7},
    {x = 5, y = -6},
    {x = 4, y = -6},
    {x = 3, y = -6},
    {x = 2, y = -6},
    {x = 1, y = -6},
    {x = 0, y = -6},
    {x = -1, y = -6},
    {x = -2, y = -6},
    {x = -3, y = -6},
    {x = -4, y = -6},
    {x = -5, y = -6},
    {x = -6, y = -6},
    {x = -7, y = -6},
    {x = -7, y = -5},
    {x = -6, y = -5},
    {x = -5, y = -5},
    {x = -4, y = -5},
    {x = -3, y = -5},
    {x = -2, y = -5},
    {x = -1, y = -5},
    {x = 0, y = -5},
    {x = 1, y = -5},
    {x = 2, y = -5},
    {x = 3, y = -5},
    {x = 4, y = -5},
    {x = 5, y = -5},
    {x = 5, y = -4},
    {x = 4, y = -4},
    {x = 3, y = -4},
    {x = 2, y = -4},
    {x = 1, y = -4},
    {x = 0, y = -4},
    {x = -1, y = -4},
    {x = -2, y = -4},
    {x = -3, y = -4},
    {x = -4, y = -4},
    {x = -5, y = -4},
    {x = -6, y = -4},
    {x = -7, y = -4},
    {x = -1, y = -3},
    {x = 0, y = -3},
    {x = 1, y = -3},
    {x = 2, y = -3},
    {x = -11, y = -12},
    {x = -11, y = -13},
    {x = -12, y = -14},
    {x = -13, y = -14},
    {x = -13, y = -13},
    {x = -14, y = -13},
    {x = -15, y = -13},
    {x = -15, y = -14},
    {x = -14, y = -14},
    {x = -11, y = -14},
    {x = -10, y = -14},
    {x = -9, y = -14},
    {x = -8, y = -14},
    {x = -7, y = -14},
    {x = -6, y = -14},
    {x = -6, y = -13},
    {x = -7, y = -13},
    {x = -8, y = -13},
    {x = -9, y = -13},
    {x = -10, y = -13},
    {x = -12, y = -13},
    {x = -5, y = -13},
    {x = -4, y = -13},
    {x = -3, y = -13},
    {x = -2, y = -13},
    {x = -1, y = -13},
    {x = 0, y = -13},
    {x = 1, y = -13},
    {x = 2, y = -13},
    {x = 3, y = -13},
    {x = 4, y = -13},
    {x = 5, y = -13},
    {x = 6, y = -13},
    {x = 7, y = -13},
    {x = 8, y = -13},
    {x = 9, y = -13},
    {x = 10, y = -13},
    {x = 11, y = -13},
    {x = 12, y = -13},
    {x = 13, y = -13},
    {x = 14, y = -13},
    {x = 15, y = -13},
    {x = 15, y = -14},
    {x = 14, y = -14},
    {x = 13, y = -14},
    {x = 12, y = -14},
    {x = 11, y = -14},
    {x = 10, y = -14},
    {x = 9, y = -14},
    {x = 8, y = -14},
    {x = 7, y = -14},
    {x = 6, y = -14},
    {x = 5, y = -14},
    {x = 4, y = -14},
    {x = 3, y = -14},
    {x = 2, y = -14},
    {x = 1, y = -14},
    {x = 0, y = -14},
    {x = -1, y = -14},
    {x = -2, y = -14},
    {x = -3, y = -14},
    {x = -15, y = -15},
    {x = -14, y = -15},
    {x = -13, y = -15},
    {x = -12, y = -15},
    {x = -11, y = -15},
    {x = -10, y = -15},
    {x = -9, y = -15},
    {x = -8, y = -15},
    {x = -7, y = -15},
    {x = -6, y = -15},
    {x = -7, y = -16},
    {x = -7, y = -17},
    {x = -6, y = -17},
    {x = -5, y = -17},
    {x = -4, y = -17},
    {x = -4, y = -16},
    {x = -3, y = -16},
    {x = -3, y = -15},
    {x = -2, y = -15},
    {x = -1, y = -15},
    {x = 0, y = -15},
    {x = 1, y = -15},
    {x = 2, y = -15},
    {x = 3, y = -15},
    {x = 4, y = -15},
    {x = 5, y = -15},
    {x = 6, y = -15},
    {x = 7, y = -15},
    {x = 8, y = -15},
    {x = 9, y = -15},
    {x = 10, y = -15},
    {x = 11, y = -15},
    {x = 12, y = -15},
    {x = 13, y = -15},
    {x = 14, y = -15},
    {x = 15, y = -15},
    {x = 12, y = -16},
    {x = 11, y = -16},
    {x = 10, y = -16},
    {x = 9, y = -16},
    {x = 8, y = -16},
    {x = 7, y = -16},
    {x = 6, y = -16},
    {x = 5, y = -16},
    {x = 4, y = -16},
    {x = 3, y = -16},
    {x = 2, y = -16},
    {x = 1, y = -16},
    {x = 0, y = -16},
    {x = -1, y = -16},
    {x = -2, y = -16},
    {x = -8, y = -16},
    {x = -9, y = -16},
    {x = -10, y = -16},
    {x = -11, y = -16},
    {x = -12, y = -16},
    {x = -13, y = -16},
    {x = -14, y = -16},
    {x = -15, y = -16},
    {x = -15, y = -17},
    {x = -14, y = -17},
    {x = -13, y = -17},
    {x = -12, y = -17},
    {x = -11, y = -17},
    {x = -10, y = -17},
    {x = -9, y = -17},
    {x = -8, y = -17},
    {x = -3, y = -17},
    {x = -2, y = -17},
    {x = -1, y = -17},
    {x = 0, y = -17},
    {x = 1, y = -17},
    {x = 2, y = -17},
    {x = 3, y = -17},
    {x = 4, y = -17},
    {x = 5, y = -17},
    {x = 6, y = -17},
    {x = 7, y = -17},
    {x = 8, y = -17},
    {x = 9, y = -17},
    {x = 10, y = -17},
    {x = 10, y = -18},
    {x = 11, y = -18},
    {x = 12, y = -18},
    {x = 13, y = -18},
    {x = 14, y = -18},
    {x = 15, y = -18},
    {x = 9, y = -18},
    {x = 8, y = -18},
    {x = 7, y = -18},
    {x = 6, y = -18},
    {x = 5, y = -18},
    {x = 4, y = -18},
    {x = 3, y = -18},
    {x = 2, y = -18},
    {x = 1, y = -18},
    {x = 0, y = -18},
    {x = -1, y = -18},
    {x = -2, y = -18},
    {x = -3, y = -18},
    {x = -4, y = -18},
    {x = -5, y = -18},
    {x = -6, y = -18},
    {x = -7, y = -18},
    {x = -8, y = -18},
    {x = -9, y = -18},
    {x = -10, y = -18},
    {x = -11, y = -18},
    {x = -12, y = -18},
    {x = -13, y = -18},
    {x = -14, y = -18},
    {x = -15, y = -18},
    {x = -15, y = -19},
    {x = -14, y = -19},
    {x = -13, y = -19},
    {x = -12, y = -19},
    {x = -11, y = -19},
    {x = -10, y = -19},
    {x = -9, y = -19},
    {x = -8, y = -19},
    {x = -7, y = -19},
    {x = -6, y = -19},
    {x = -5, y = -19},
    {x = -4, y = -19},
    {x = -3, y = -19},
    {x = -2, y = -19},
    {x = -1, y = -19},
    {x = 0, y = -19},
    {x = 1, y = -19},
    {x = 2, y = -19},
    {x = 3, y = -19},
    {x = 4, y = -19},
    {x = 5, y = -19},
    {x = 6, y = -19},
    {x = 7, y = -19},
    {x = 8, y = -19},
    {x = 9, y = -19},
    {x = 10, y = -19},
    {x = 11, y = -19},
    {x = 12, y = -19},
    {x = 13, y = -19},
    {x = 14, y = -19},
    {x = 15, y = -19},
    {x = 15, y = -20},
    {x = 14, y = -20},
    {x = 13, y = -20},
    {x = 12, y = -20},
    {x = 11, y = -20},
    {x = 10, y = -20},
    {x = 9, y = -20},
    {x = 8, y = -20},
    {x = 7, y = -20},
    {x = 6, y = -20},
    {x = 5, y = -20},
    {x = 4, y = -20},
    {x = 3, y = -20},
    {x = 2, y = -20},
    {x = 1, y = -20},
    {x = 0, y = -20},
    {x = -1, y = -20},
    {x = -2, y = -20},
    {x = -3, y = -20},
    {x = -4, y = -20},
    {x = -5, y = -20},
    {x = -6, y = -20},
    {x = -7, y = -20},
    {x = -8, y = -20},
    {x = -9, y = -20},
    {x = -10, y = -20},
    {x = -11, y = -20},
    {x = -12, y = -20},
    {x = -13, y = -20},
    {x = -14, y = -20},
    {x = -15, y = -20},
    {x = -14, y = -21},
    {x = -12, y = -21},
    {x = -11, y = -21},
    {x = -10, y = -21},
    {x = -9, y = -21},
    {x = -8, y = -21},
    {x = -7, y = -21},
    {x = -6, y = -21},
    {x = -5, y = -21},
    {x = -4, y = -21},
    {x = -3, y = -21},
    {x = -2, y = -21},
    {x = -1, y = -21},
    {x = 0, y = -21},
    {x = 1, y = -21},
    {x = 2, y = -21},
    {x = 3, y = -21},
    {x = 4, y = -21},
    {x = 5, y = -21},
    {x = 6, y = -21},
    {x = 9, y = -21},
    {x = 10, y = -21},
    {x = 11, y = -21},
    {x = 12, y = -21},
    {x = 13, y = -21},
    {x = 14, y = -21},
    {x = 15, y = -21},
    {x = 15, y = -22},
    {x = 14, y = -22},
    {x = 13, y = -22},
    {x = 12, y = -22},
    {x = 11, y = -22},
    {x = 10, y = -22},
    {x = 9, y = -22},
    {x = 5, y = -22},
    {x = 4, y = -22},
    {x = 3, y = -22},
    {x = 2, y = -22},
    {x = 1, y = -22},
    {x = 0, y = -22},
    {x = -1, y = -22},
    {x = -2, y = -22},
    {x = -3, y = -22},
    {x = -4, y = -22},
    {x = -5, y = -22},
    {x = -6, y = -22},
    {x = -7, y = -22},
    {x = -8, y = -22},
    {x = -9, y = -22},
    {x = -10, y = -22},
    {x = -11, y = -22},
    {x = -12, y = -22},
    {x = -11, y = -23},
    {x = -10, y = -23},
    {x = -9, y = -23},
    {x = -8, y = -23},
    {x = -7, y = -23},
    {x = -6, y = -23},
    {x = -5, y = -23},
    {x = -4, y = -23},
    {x = -3, y = -23},
    {x = -2, y = -23},
    {x = -1, y = -23},
    {x = 0, y = -23},
    {x = 1, y = -23},
    {x = 2, y = -23},
    {x = 3, y = -23},
    {x = 4, y = -23},
    {x = 5, y = -23},
    {x = 6, y = -23},
    {x = 7, y = -23},
    {x = 6, y = -24},
    {x = 6, y = -25},
    {x = 7, y = -25},
    {x = 8, y = -24},
    {x = 9, y = -24},
    {x = 9, y = -23},
    {x = 10, y = -23},
    {x = 11, y = -23},
    {x = 12, y = -23},
    {x = 13, y = -23},
    {x = 14, y = -23},
    {x = 15, y = -23},
    {x = 15, y = -24},
    {x = 14, y = -24},
    {x = 13, y = -24},
    {x = 12, y = -24},
    {x = 11, y = -24},
    {x = 10, y = -24},
    {x = 8, y = -25},
    {x = 5, y = -24},
    {x = 4, y = -24},
    {x = 3, y = -24},
    {x = 2, y = -24},
    {x = 1, y = -24},
    {x = 0, y = -24},
    {x = -1, y = -24},
    {x = -2, y = -24},
    {x = -3, y = -24},
    {x = -4, y = -24},
    {x = -5, y = -24},
    {x = -6, y = -24},
    {x = -7, y = -24},
    {x = -8, y = -24},
    {x = -9, y = -24},
    {x = -10, y = -24},
    {x = -11, y = -24},
    {x = -12, y = -24},
    {x = -13, y = -24},
    {x = -14, y = -24},
    {x = -15, y = -24},
    {x = -15, y = -25},
    {x = -14, y = -25},
    {x = -13, y = -25},
    {x = -12, y = -25},
    {x = -11, y = -25},
    {x = -10, y = -25},
    {x = -9, y = -25},
    {x = -8, y = -25},
    {x = -7, y = -25},
    {x = -6, y = -25},
    {x = -5, y = -25},
    {x = -4, y = -25},
    {x = -3, y = -25},
    {x = -2, y = -25},
    {x = -1, y = -25},
    {x = 0, y = -25},
    {x = 1, y = -25},
    {x = 2, y = -25},
    {x = 3, y = -25},
    {x = 4, y = -25},
    {x = 5, y = -25},
    {x = 9, y = -25},
    {x = 10, y = -25},
    {x = 11, y = -25},
    {x = 12, y = -25},
    {x = 13, y = -25},
    {x = 14, y = -25},
    {x = 15, y = -25},
    {x = 15, y = -26},
    {x = 14, y = -26},
    {x = 13, y = -26},
    {x = 12, y = -26},
    {x = 11, y = -26},
    {x = 10, y = -26},
    {x = 9, y = -26},
    {x = 8, y = -26},
    {x = 7, y = -26},
    {x = 6, y = -26},
    {x = 5, y = -26},
    {x = 4, y = -26},
    {x = 3, y = -26},
    {x = 2, y = -26},
    {x = 1, y = -26},
    {x = 0, y = -26},
    {x = -1, y = -26},
    {x = -2, y = -26},
    {x = -3, y = -26},
    {x = -4, y = -26},
    {x = -5, y = -26},
    {x = -6, y = -26},
    {x = -7, y = -26},
    {x = -8, y = -26},
    {x = -9, y = -26},
    {x = -10, y = -26},
    {x = -11, y = -26},
    {x = -12, y = -26},
    {x = -13, y = -26},
    {x = -14, y = -26},
    {x = -15, y = -26},
    {x = -15, y = -27},
    {x = -14, y = -27},
    {x = -13, y = -27},
    {x = -12, y = -27},
    {x = -11, y = -27},
    {x = -10, y = -27},
    {x = -9, y = -27},
    {x = -7, y = -27},
    {x = -6, y = -27},
    {x = -5, y = -27},
    {x = -4, y = -27},
    {x = -3, y = -27},
    {x = -2, y = -27},
    {x = -1, y = -27},
    {x = 0, y = -27},
    {x = 1, y = -27},
    {x = 2, y = -27},
    {x = 3, y = -27},
    {x = 4, y = -27},
    {x = 5, y = -27},
    {x = 6, y = -27},
    {x = 7, y = -27},
    {x = 8, y = -27},
    {x = 9, y = -27},
    {x = 10, y = -27},
    {x = 11, y = -27},
    {x = 12, y = -27},
    {x = 13, y = -27},
    {x = 14, y = -27},
    {x = 15, y = -27},
    {x = 15, y = -28},
    {x = 14, y = -28},
    {x = 13, y = -28},
    {x = 12, y = -28},
    {x = 11, y = -28},
    {x = 10, y = -28},
    {x = 9, y = -28},
    {x = 8, y = -28},
    {x = 7, y = -28},
    {x = 6, y = -28},
    {x = 5, y = -28},
    {x = 4, y = -28},
    {x = 3, y = -28},
    {x = 2, y = -28},
    {x = 1, y = -28},
    {x = 0, y = -28},
    {x = -1, y = -28},
    {x = -2, y = -28},
    {x = -3, y = -28},
    {x = -6, y = -28},
    {x = -7, y = -28},
    {x = -11, y = -28},
    {x = -12, y = -28},
    {x = -13, y = -28},
    {x = -14, y = -28},
    {x = -15, y = -28},
    {x = -10, y = -28},
    {x = -9, y = -28},
    {x = -9, y = -29},
    {x = -8, y = -29},
    {x = -10, y = -29},
    {x = -11, y = -29},
    {x = -12, y = -29},
    {x = -13, y = -29},
    {x = -14, y = -29},
    {x = -15, y = -29},
    {x = -15, y = -30},
    {x = -14, y = -30},
    {x = -13, y = -30},
    {x = -12, y = -30},
    {x = -11, y = -30},
    {x = -10, y = -30},
    {x = -9, y = -30},
    {x = -8, y = -30},
    {x = -7, y = -30},
    {x = -6, y = -30},
    {x = -6, y = -31},
    {x = -5, y = -31},
    {x = -4, y = -31},
    {x = -4, y = -30},
    {x = -3, y = -30},
    {x = -2, y = -30},
    {x = -1, y = -30},
    {x = 0, y = -30},
    {x = 1, y = -30},
    {x = 2, y = -30},
    {x = 3, y = -30},
    {x = 4, y = -30},
    {x = 5, y = -30},
    {x = 6, y = -30},
    {x = 7, y = -30},
    {x = 7, y = -29},
    {x = 8, y = -29},
    {x = 6, y = -29},
    {x = 5, y = -29},
    {x = 4, y = -29},
    {x = 3, y = -29},
    {x = 2, y = -29},
    {x = 1, y = -29},
    {x = 0, y = -29},
    {x = -1, y = -29},
    {x = 9, y = -29},
    {x = 10, y = -29},
    {x = 11, y = -29},
    {x = 12, y = -29},
    {x = 13, y = -29},
    {x = 14, y = -29},
    {x = 15, y = -29},
    {x = 15, y = -30},
    {x = 14, y = -30},
    {x = 13, y = -30},
    {x = 12, y = -30},
    {x = 11, y = -30},
    {x = 10, y = -30},
    {x = 10, y = -31},
    {x = 11, y = -31},
    {x = 12, y = -31},
    {x = 13, y = -31},
    {x = 14, y = -31},
    {x = 15, y = -31},
    {x = 15, y = -32},
    {x = 14, y = -32},
    {x = 13, y = -32},
    {x = 12, y = -32},
    {x = 11, y = -32},
    {x = 10, y = -32},
    {x = 10, y = -33},
    {x = 11, y = -33},
    {x = 12, y = -33},
    {x = 13, y = -33},
    {x = 13, y = -34},
    {x = 12, y = -34},
    {x = 11, y = -34},
    {x = 10, y = -34},
    {x = 10, y = -35},
    {x = 11, y = -35},
    {x = 12, y = -35},
    {x = 7, y = -31},
    {x = 7, y = -32},
    {x = 7, y = -33},
    {x = 7, y = -34},
    {x = 8, y = -34},
    {x = 6, y = -34},
    {x = 5, y = -34},
    {x = 5, y = -35},
    {x = 5, y = -36},
    {x = 4, y = -36},
    {x = 3, y = -36},
    {x = 2, y = -36},
    {x = 1, y = -36},
    {x = 0, y = -36},
    {x = -1, y = -36},
    {x = -2, y = -36},
    {x = -3, y = -36},
    {x = -4, y = -36},
    {x = -5, y = -36},
    {x = -5, y = -35},
    {x = -6, y = -35},
    {x = -7, y = -35},
    {x = -8, y = -35},
    {x = -9, y = -35},
    {x = -10, y = -35},
    {x = -11, y = -35},
    {x = -11, y = -34},
    {x = -12, y = -34},
    {x = -10, y = -34},
    {x = -9, y = -34},
    {x = -8, y = -34},
    {x = -7, y = -34},
    {x = -6, y = -34},
    {x = -5, y = -34},
    {x = -4, y = -34},
    {x = -3, y = -34},
    {x = -2, y = -34},
    {x = -1, y = -34},
    {x = 0, y = -34},
    {x = 1, y = -34},
    {x = 2, y = -34},
    {x = 3, y = -34},
    {x = 4, y = -34},
    {x = 6, y = -33},
    {x = 5, y = -33},
    {x = 4, y = -33},
    {x = 3, y = -33},
    {x = 2, y = -33},
    {x = 1, y = -33},
    {x = 0, y = -33},
    {x = -1, y = -33},
    {x = -2, y = -33},
    {x = -3, y = -33},
    {x = -4, y = -33},
    {x = -5, y = -33},
    {x = -6, y = -33},
    {x = -7, y = -33},
    {x = -8, y = -33},
    {x = -9, y = -33},
    {x = -10, y = -33},
    {x = -11, y = -33},
    {x = -12, y = -33},
    {x = -13, y = -33},
    {x = -13, y = -32},
    {x = -14, y = -32},
    {x = -12, y = -32},
    {x = -11, y = -32},
    {x = -10, y = -32},
    {x = -9, y = -32},
    {x = -8, y = -32},
    {x = -7, y = -32},
    {x = -6, y = -32},
    {x = -5, y = -32},
    {x = -4, y = -32},
    {x = -3, y = -32},
    {x = -2, y = -32},
    {x = -1, y = -32},
    {x = 0, y = -32},
    {x = 1, y = -32},
    {x = 2, y = -32},
    {x = 3, y = -32},
    {x = 4, y = -32},
    {x = 5, y = -32},
    {x = 6, y = -32},
    {x = 6, y = -31},
    {x = 5, y = -31},
    {x = 4, y = -31},
    {x = 3, y = -31},
    {x = 2, y = -31},
    {x = 1, y = -31},
    {x = 0, y = -31},
    {x = -1, y = -31},
    {x = -2, y = -31},
    {x = -3, y = -31},
    {x = -7, y = -31},
    {x = -8, y = -31},
    {x = -9, y = -31},
    {x = -10, y = -31},
    {x = -11, y = -31},
    {x = -12, y = -31},
    {x = -13, y = -31},
    {x = -14, y = -31},
    {x = -15, y = -31},
}
API.Write_LoopyLoop(true)
function Find_ObjectinCoord(viirsx, seocondy)
    local kititere = viirsx
    local kittipww = seocondy
    local xAw = {}
    xAw.x = math.floor(kititere / 512)
    xAw.y = math.floor(kittipww / 512)
    xAw.z = 1
    return xAw
end
-- Function to check if a coordinate already exists in the table
local function isCoordinateInTable(tbl, x, y,obectjdidd)
    for _, coord in ipairs(tbl) do
        if coord.x == x and coord.y == y and coord.objectid == obectjdidd then
            return true
        end
    end
    return false
end
function GetDirectionNamefromangle(givenfacingAngle)
    local directions = {"North", "Northeast", "East", "Southeast", "South", "Southwest", "West", "Northwest", "North"}
    local angles = {0, 45, 90, 135, 180, 225, 270, 315, 360}
    givenfacingAngle = givenfacingAngle % 360  -- Ensure angle is within 0 to 360 degrees
    local minDifference = math.abs(givenfacingAngle - angles[1])
    local closestDirection = directions[1]
    local closestAngle = angles[1]
    for i = 2, #angles do
        local difference = math.abs(givenfacingAngle - angles[i])
        if difference < minDifference then
            minDifference = difference
            closestDirection = directions[i]
            closestAngle = angles[i]
        end
    end
    return closestDirection
end
local monsterinrasial = {}
function CalculateDistance(x1, y1, x2, y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end
function FindShortestDistance(playerX, playerY, monsterTable)
    local shortestDistance = math.huge -- Initialize with a large value
    local nearestMonster = nil
    for _, monster in ipairs(monsterTable) do
        local distance = CalculateDistance(playerX, playerY, monster.x, monster.y)
        if distance < shortestDistance then
            shortestDistance = distance
            nearestMonster = monster
        end
    end
    return shortestDistance, nearestMonster
end
function predictFutureCoordinates(coordinates, timeCount)
    local predictions = {}  -- Table to store predicted coordinates
    -- Calculate differences between consecutive coordinates
    local total_dx, total_dy = 0, 0
    local count = #coordinates - 1

    for i = 2, #coordinates do
        total_dx = total_dx + (coordinates[i].x - coordinates[i - 1].x)
        total_dy = total_dy + (coordinates[i].y - coordinates[i - 1].y)
    end

    local avg_dx = total_dx / count
    local avg_dy = total_dy / count

    -- Predict future coordinates based on average change
    local next_x, next_y = coordinates[#coordinates].x, coordinates[#coordinates].y
    for i = 1, timeCount do
        next_x = next_x + avg_dx
        next_y = next_y + avg_dy
        table.insert(predictions, {x = next_x, y = next_y})
    end

    return predictions
end
function isNumber(value)
    return tonumber(value) ~= nil
end
local function Isdevotionactive()
    local oosoaaa = API.Buffbar_GetAllIDs(false)
    for i, bariddda in ipairs(oosoaaa) do
        if(bariddda.id == 21665) then
            if(isNumber(bariddda.conv_text)) then
                return bariddda.conv_text
            end
        end
    end
    return 0
end
local function Isreflectactive()
    local oosoaaa = API.Buffbar_GetAllIDs(false)
    for i, bariddda in ipairs(oosoaaa) do
        if(bariddda.id == 14225) then
            if(isNumber(bariddda.conv_text)) then
                return bariddda.conv_text
            end
        end
    end
    return 0
end
local function Islimitlessactive()
    local oosoaaa = API.Buffbar_GetAllIDs(false)
    for i, bariddda in ipairs(oosoaaa) do
        if(bariddda.id == 1522) then
            if(isNumber(bariddda.conv_text)) then
                return bariddda.conv_text
            end
        end
    end
    return 0
end
-- Function to check if a coordinate is within the predicted coordinates
function isWithinPredictions(coord, predictions)
    for _, prediction in ipairs(predictions) do
        if math.abs(coord.x - prediction.x) <= 2 and math.abs(coord.y - prediction.y) <= 2 then
            return true
        end
    end
    for _, prediction in ipairs(monsterinrasial) do
        if  math.abs(coord.x == prediction.x) <= 2 and math.abs(coord.y - prediction.y) <= 2 then
            return true
        end
    end
    return false
end
-- Function to generate all possible coordinates within player range
function generateAllPossibleCoordinates(playerX, playerY, range)
    local possibleCoordinates = {}
    for x = playerX - range, playerX + range do
        for y = playerY - range, playerY + range do
            table.insert(possibleCoordinates, {x = x, y = y})
        end
    end
    return possibleCoordinates
end
-- Function to filter out predicted coordinates from possible coordinates
function filterPredictedCoordinates(possibleCoordinates, predictions,playerx,playery,lavageiserss,afterpoint,centerpoint)
    local filteredCoordinates = {}
    for _, coord in ipairs(possibleCoordinates) do
        local isPredicted = false
        for _, prediction in ipairs(predictions) do
            if math.abs(coord.x - prediction.x) <= 3 and math.abs(coord.y - prediction.y) <= 3 then
                isPredicted = true
                break
            end
        end
        if(isPredicted == false) then
            for _, prediction in ipairs(afterpoint) do
                if math.abs(coord.x - prediction.x) <= 4 and math.abs(coord.y - prediction.y) <= 4 then
                    isPredicted = true
                    break
                end
            end
        end
        if(isPredicted == false) then
            for _, prediction in ipairs(centerpoint) do
                if math.abs(coord.x - prediction.x) <= 4 and math.abs(coord.y - prediction.y) <= 4 then
                    isPredicted = true
                    break
                end
            end
        end
        if(isPredicted == false) then
            for _, prediction in ipairs(monsterinrasial) do
                if  math.abs(coord.x - prediction.x) <= 3 and math.abs(coord.y - prediction.y) <= 3 then
                    isPredicted = true
                    break  -- Exit the loop if a predicted coordinate is found
                end
            end
        end
        if(isPredicted == false) then
            for indexinddddaxx, adasdasxx in ipairs(lavageiserss) do
                if(adasdasxx.x == coord.x and adasdasxx.y == coord.y) then
                    isPredicted = true
                    break
                end
            end
        end
        if(isPredicted == false) then
            if(findzukkx ~= -1) then
                local isinzonee = false
                local xdifferencexx = coord.x - findzukkx
                local ydifferencexx = coord.y - findzukky
                for _, prediction in ipairs(coordinatesTable) do
                    if(xdifferencexx == prediction.x and ydifferencexx == prediction.y) then
                        isinzonee = true
                        break
                    end
                end
                if(isinzonee == false) then
                    isPredicted = true
                end
            end
        end
        if not isPredicted then
            table.insert(filteredCoordinates, coord)
        end
    end
    return filteredCoordinates
end
-- Function to select the coordinate with the shortest distance to the target point
function selectClosestCoordinate(filteredCoordinates, targetX, targetY,moreargument)
    local shortestDistance = math.huge
    local closestCoord = nil
    local refilteredCoordinates = {}
    local closestCoordCandidate = nil
    local minAllowedDistance = 2

    for _, coord in ipairs(filteredCoordinates) do
        table.insert(refilteredCoordinates , {x = coord.x, y = coord.y, isgoodspot = -1})
    end
    if(moreargument == 1) then
        for index, coord in ipairs(refilteredCoordinates) do
            local istherecoordinateinehere = false
            for _, cornerrr in ipairs(Northwestcorner) do
                local coordinatesinrealx, coordinatesinrealy = movezukarenabasedonarenaM(cornerrr.x,cornerrr.y)
                if(coordinatesinrealx == coord.x and coordinatesinrealy == coord.y) then
                    istherecoordinateinehere = true
                    break
                end
            end
            if(istherecoordinateinehere == false) then
                refilteredCoordinates[index].isgoodspot = 0
            end
        end
    elseif(moreargument == 2) then
        for index, coord in ipairs(refilteredCoordinates) do
            local istherecoordinateinehere = false
            for _, cornerrr in ipairs(Southeastcorner) do
                local coordinatesinrealx, coordinatesinrealy = movezukarenabasedonarenaM(cornerrr.x,cornerrr.y)
                if(coordinatesinrealx == coord.x and coordinatesinrealy == coord.y) then
                    istherecoordinateinehere = true
                    break
                end
            end
            if(istherecoordinateinehere == false) then
                refilteredCoordinates[index].isgoodspot = 0
            end
        end
    end
    -- First, find the shortest distance
    for _, coord in ipairs(refilteredCoordinates) do
        if coord.isgoodspot == -1 then
            local distance = CalculateDistance(targetX, targetY, coord.x, coord.y)
            if distance < shortestDistance then
                shortestDistance = distance
                closestCoord = coord
            end
        end
    end
    -- If moreargument is not 0, find the next closest distance that is at least 1 unit greater than the shortest distance
    --if moreargument ~= 0 then
        --local secondShortestDistance = math.huge
        --for _, coord in ipairs(refilteredCoordinates) do
            --if coord.isgoodspot == -1 then
                --local distance = CalculateDistance(targetX, targetY, coord.x, coord.y)
                --if distance > shortestDistance and distance >= shortestDistance + minAllowedDistance and distance < secondShortestDistance then
                    --secondShortestDistance = distance
                    --closestCoordCandidate = coord
                --end
            --end
        --end
        -- If a valid candidate is found, use it as the closest coordinate
        --if secondShortestDistance ~= math.huge then
            --closestCoord = closestCoordCandidate
        --end
    --end
    return closestCoord
end
-- Function to select the coordinate with the furthest distance to the target point
function selectFurthestCoordinate(coordinates, targetX, targetY)
    local furthestDistance = -math.huge
    local furthestCoord = nil
    for _, coord in ipairs(coordinates) do
        local distance = CalculateDistance(targetX, targetY, coord.x, coord.y)
        if distance > furthestDistance then
            furthestDistance = distance
            furthestCoord = coord
        end
    end
    return furthestCoord
end
local storecoordinates = {}
-- Function to check if two coordinates are the same
function areCoordinatesEqual(coord1, coord2)
    return coord1.x == coord2.x and coord1.y == coord2.y
end
function movezukarenabasedonarenaM(givenIDx,givenIDy)
    local realcoordinatex = findzukkx + givenIDx
    local realcoordinatey = findzukky + givenIDy
    return realcoordinatex, realcoordinatey
end
-- Create a table of parameters
local parameters = {
    {-6, -15},
    {-6, -14},
    {-7, -14},
    {-6, -13},
    {-7, -13},
    {-8, -13},
    {-8, -14},
    {-8, -15},
    {-8, -16},
    {-7, -16}
}
local firewalltowardstoxox = -1
local firewalltowardstoxoy = -1
local checkonemoretimeee = false
local storemonstersintable = {}
local firewallmoregenerator = 0
local switchtosoulsplittts = 0
local switchtosoulsplitttscooldown = API.SystemTime()
local minintervalswithcprayers = API.SystemTime()
local minintervalswithcprayersss = API.SystemTime()
local gototorureue = false
local oneprintt = false
local wheregenratedd = false
local siittrangedd = 0
local startfirstafterends = false
local Onabilityafterlimitless = 0
local abilithwhichtochoose = 0
local limitlesswasacitvated = false
local isdevotionwasacitvatedTIME = API.SystemTime()
local devotioncooldown = API.SystemTime()
local isdevotionwasacitvated = false
local firewallwaitactions = API.SystemTime()
local isreflectwasacitvatedTIME = API.SystemTime()
local reflectcooldown = API.SystemTime()
local isreflectwasacitvated = false
local limitlesscooldown = API.SystemTime()
local islimitlesswasacitvatedTIME = API.SystemTime()
function move_to_target_and_beyond(start_x, start_y, target_x, target_y, steps_beyond)
    -- Initialize tables to store the coordinates
    local coordinates_to_target = {}
    local coordinates_beyond_target = {}
    local last_step = {}
    -- Calculate the direction of movement
    local dx = target_x - start_x
    local dy = target_y - start_y
    -- Calculate the number of steps required to reach the target
    local steps = math.max(math.abs(dx), math.abs(dy))
    -- Calculate the incremental steps in x and y directions
    local step_x = dx / steps
    local step_y = dy / steps
    -- Move towards the target
    local x, y = start_x, start_y
    for i = 0, steps do
        local current_x = math.floor(x + 0.5)
        local current_y = math.floor(y + 0.5)
        table.insert(coordinates_to_target, {x = current_x, y = current_y})
        -- If this is the last step, store it separately
        if i == steps then
            table.insert(last_step, {x = current_x, y = current_y})
        end
        x = x + step_x
        y = y + step_y
    end
    -- Move past the target for the specified number of steps
    for i = 1, steps_beyond do
        x = x + step_x
        y = y + step_y
        table.insert(coordinates_beyond_target, {x = math.floor(x + 0.5), y = math.floor(y + 0.5)})
    end
    return coordinates_to_target, coordinates_beyond_target, last_step
end
-- Function to count occurrences and find the most frequent number
function findMostFrequent(tbl)
    local counts = {}
    local maxCount = 0
    local mostFrequent = {}
    -- Count occurrences of each number
    for _, num in ipairs(tbl) do
        counts[num] = (counts[num] or 0) + 1
        if counts[num] > maxCount then
            maxCount = counts[num]
            mostFrequent = {num} -- Reset mostFrequent with the new max number
        elseif counts[num] == maxCount then
            -- Debug print to check the state before the error
            table.insert(mostFrequent, num) -- Add to mostFrequent if it matches the max count
        end
    end
    -- Randomly select one if there's a tie
    math.randomseed(os.time())
    local randomIndex = math.random(#mostFrequent)
    return mostFrequent[randomIndex], maxCount
end
local retrievevalueee = API.VB_FindPSettinOrder(683, -1).state
function Performgameanalyze()
    local RetrievePointCoordinates = API.PlayerCoord()
    local ZaidejoX = RetrievePointCoordinates.x
    local ZaidejoY = RetrievePointCoordinates.y
    local getcurrentvalue = API.VB_FindPSettinOrder(683, -1).state
    if(retrievevalueee ~= getcurrentvalue) then
        retrievevalueee = getcurrentvalue
        if(API.SystemTime() > minintervalswithcprayersss) then
            local stillnearsomemosnters = 0
            if(savedecidedprayer == 4) then
                for imfexx, pramterrrr in ipairs(storemonstersintable) do
                    if(pramterrrr.monstroid == 28535 or pramterrrr.monstroid == 28545) then -- meele attack (mini goblins and flying bastard)
                        if(pramterrrr.monstrhp > 7500) then
                            local hownearyou = CalculateDistance(ZaidejoX,ZaidejoY,pramterrrr.monstrox,pramterrrr.monstroy)
                            if(hownearyou <= 2) then
                                stillnearsomemosnters = stillnearsomemosnters + 1
                            end
                        end
                    end
                end
            end
            if(stillnearsomemosnters < 2 and Isdevotionactive() <= 1) then
                local isdrainingcurseavnv = false
                if(API.VB_FindPSettinOrder(1035, -1).state ~= 0) then
                    isdrainingcurseavnv = true
                end
                local whenturnossplayer = 24
                local whenturnossplayder = 262144
                if(isdrainingcurseavnv == true) then
                    whenturnossplayer = 49
                end
                local kokaistatejeja = API.VB_FindPSettinOrder(3269, -1).state
                local retrieveststeeseeee = API.VB_FindPSettinOrder(3275, -1).state
                if(kokaistatejeja ~= whenturnossplayer and retrieveststeeseeee ~= whenturnossplayder) then
                    tooWasotheractiontriggered(timepassabilities)
                    API.DoAction_Ability("Soul Split", 1, API.OFF_ACT_GeneralInterface_route)
                    Waitcustomsleep()
                    savedecidedprayer = 0
                    switchtosoulsplitttscooldown = API.SystemTime() + (1000 + API.Math_RandomNumber(1000))
                end
            end
        end
    end
    local objs = API.ReadAllObjectsArray({0,13,1}, {-1}, {})
    local foundhitspot = false
    local foundanyhermod = false
    local foundanyrasial = false
    local canarealootbetoogled = false
    local yourgoingxxx = -1
    local yourgoingxxy = -1
    local foddnfnf = false
    local storemonstersintablenow = {}
    local lavageisers = {}
    local meeleattackers = 0
    local rangedattackers = 0
    for _, obj in ipairs(objs) do
        if obj.Type == 0 then
            if obj.Id == 122062 or obj.Id == 122063 then
                local korodinatess = Find_ObjectinCoord(obj.TileX, obj.TileY)
                -- Check if the coordinates are already in the table
                if not isCoordinateInTable(monsterinrasial, korodinatess.x, korodinatess.y,obj.Id) then
                    -- Add the coordinates to the table if they are not already present
                    if(wheregenratedd == false) then
                        local RetrievePointCoordinates = API.PlayerCoord()
                        local ZaidejoX = RetrievePointCoordinates.x
                        local ZaidejoY = RetrievePointCoordinates.y
                       
                        firewalltowardstoxox = ZaidejoX
                        firewalltowardstoxoy = ZaidejoY
                        firewallwaitactions = API.SystemTime() + 1250
                        wheregenratedd = true
                    end
                   
                    startfirstafterends = true
                    table.insert(monsterinrasial, {x = korodinatess.x, y = korodinatess.y, objectid = obj.Id})
                end
                foddnfnf = true
            end
        elseif obj.Type == 13 then
            if obj.Id == 99 then
                local korodinatess = Find_ObjectinCoord(obj.TileX, obj.TileY)
                yourgoingxxx = korodinatess.x
                yourgoingxxy = korodinatess.y
            end
        elseif obj.Type == 1 then
            if(findzukkx == -1) then
                if obj.Id == 28526 then -- or obj.Id == 28525, 28526
                    local korodinatess = Find_ObjectinCoord(obj.TileX, obj.TileY)
                    findzukkx = korodinatess.x
                    findzukky = korodinatess.y
                    print('Zuk found!')
                end
            end
            if obj.Id == 28552 then -- lava gesers
                local korodinatess = Find_ObjectinCoord(obj.TileX, obj.TileY)
                table.insert(lavageisers, {x = korodinatess.x, y = korodinatess.y})
            elseif obj.Id == 28538 then
                local korodinatess = Find_ObjectinCoord(obj.TileX, obj.TileY)
                local healthinssytem = -1
                local whatanimationnow = -1
                local notdulicated = false
                local elementtoupdate = 1
                for indexindddsda, addasdas in ipairs(storemonstersintable) do
                    if(addasdas.memaddr == obj.Mem) then
                        notdulicated = true
                        whatanimationnow = addasdas.reganim
                        elementtoupdate = indexindddsda
                        healthinssytem = addasdas.monstrhp
                        break
                    end
                end
                table.insert(storemonstersintablenow , {memaddr = obj.Mem})
                if(notdulicated == true) then
                    if(whatanimationnow ~= obj.Anim) then
                        storemonstersintable[elementtoupdate].checked = 0
                        storemonstersintable[elementtoupdate].reganim = obj.Anim
                        storemonstersintable[elementtoupdate].registerattack = API.SystemTime()
                    end
                    if(healthinssytem ~= obj.Life) then
                        local differenceihealth = obj.Life - healthinssytem
                        if(differenceihealth > 100) then
                            storemonstersintable[elementtoupdate].checked = 0
                        end
                    end
                    storemonstersintable[elementtoupdate].appearreg = API.SystemTime()
                    storemonstersintable[elementtoupdate].monstrhp = obj.Life
                    storemonstersintable[elementtoupdate].monstrox = korodinatess.x
                    storemonstersintable[elementtoupdate].monstroy = korodinatess.y
                else

             
                    table.insert(storemonstersintable , {memaddr = obj.Mem, registerattack = API.SystemTime(), reganim = obj.Anim, appearreg = API.SystemTime(),checked = 0,monstrhp = obj.Life,monstroid = obj.Id,monstrox = korodinatess.x, monstroy = korodinatess.y})
                end
            elseif obj.Id == 28536 then
                local korodinatess = Find_ObjectinCoord(obj.TileX, obj.TileY)
                local healthinssytem = -1
                local whatanimationnow = -1
                local notdulicated = false
                local elementtoupdate = 1
                for indexindddsda, addasdas in ipairs(storemonstersintable) do
                    if(addasdas.memaddr == obj.Mem) then
                        notdulicated = true
                        whatanimationnow = addasdas.reganim
                        elementtoupdate = indexindddsda
                        healthinssytem = addasdas.monstrhp
                        break
                    end
                end
                table.insert(storemonstersintablenow , {memaddr = obj.Mem})
                if(notdulicated == true) then
                    if(whatanimationnow ~= obj.Anim) then
                        storemonstersintable[elementtoupdate].checked = 0
                        storemonstersintable[elementtoupdate].reganim = obj.Anim
                        storemonstersintable[elementtoupdate].registerattack = API.SystemTime()
                    end
                    if(elementtoupdate ~= obj.Life) then
                        local differenceihealth = obj.Life - elementtoupdate
                        if(differenceihealth > 100) then
                            storemonstersintable[elementtoupdate].checked = 0
                        end
                    end
                    storemonstersintable[elementtoupdate].appearreg = API.SystemTime()
                    storemonstersintable[elementtoupdate].monstrhp = obj.Life
                    storemonstersintable[elementtoupdate].monstrox = korodinatess.x
                    storemonstersintable[elementtoupdate].monstroy = korodinatess.y
                else
                  
                    table.insert(storemonstersintable , {memaddr = obj.Mem, registerattack = API.SystemTime(), reganim = obj.Anim, appearreg = API.SystemTime(),checked = 0,monstrhp = obj.Life,monstroid = obj.Id,monstrox = korodinatess.x, monstroy = korodinatess.y})
                end
            elseif obj.Id == 28535 then -- mini meele deelers
                local korodinatess = Find_ObjectinCoord(obj.TileX, obj.TileY)
                local whatanimationnow = -1
                local healthinssytem = -1
                local notdulicated = false
                local elementtoupdate = 1
                for indexindddsda, addasdas in ipairs(storemonstersintable) do
                    if(addasdas.memaddr == obj.Mem) then
                        notdulicated = true
                        whatanimationnow = addasdas.reganim
                        elementtoupdate = indexindddsda
                        healthinssytem = addasdas.monstrhp
                        break
                    end
                end
                table.insert(storemonstersintablenow , {memaddr = obj.Mem})
                if(notdulicated == true) then
                    if(whatanimationnow ~= obj.Anim) then
                        storemonstersintable[elementtoupdate].reganim = obj.Anim
                        storemonstersintable[elementtoupdate].registerattack = API.SystemTime()
                    end
                    if(healthinssytem ~= obj.Life) then
                        local differenceihealth = obj.Life - healthinssytem
                        if(differenceihealth > 100) then
                            storemonstersintable[elementtoupdate].checked = 0
                        end
                    end
                    local hownearyou = CalculateDistance(ZaidejoX,ZaidejoY,korodinatess.x,korodinatess.y)
                    if(hownearyou >= 3) then
                        storemonstersintable[elementtoupdate].checked = 0
                    end
                    storemonstersintable[elementtoupdate].appearreg = API.SystemTime()
                    storemonstersintable[elementtoupdate].monstrhp = obj.Life
                    storemonstersintable[elementtoupdate].monstrox = korodinatess.x
                    storemonstersintable[elementtoupdate].monstroy = korodinatess.y
                else
                  
                    table.insert(storemonstersintable , {memaddr = obj.Mem, registerattack = API.SystemTime(), reganim = obj.Anim, appearreg = API.SystemTime(),checked = 0,monstrhp = obj.Life,monstroid = obj.Id,monstrox = korodinatess.x, monstroy = korodinatess.y})
                end
            elseif obj.Id == 28545 then -- mini flying bastards
                local korodinatess = Find_ObjectinCoord(obj.TileX, obj.TileY)
                local whatanimationnow = -1
                local notdulicated = false
                local elementtoupdate = 1
                local healthinssytem = -1
                for indexindddsda, addasdas in ipairs(storemonstersintable) do
                    if(addasdas.memaddr == obj.Mem) then
                        notdulicated = true
                        whatanimationnow = addasdas.reganim
                        elementtoupdate = indexindddsda
                        healthinssytem = addasdas.monstrhp
                        break
                    end
                end
                table.insert(storemonstersintablenow , {memaddr = obj.Mem})
                if(notdulicated == true) then
                    if(whatanimationnow ~= obj.Anim) then
                        storemonstersintable[elementtoupdate].checked = 0
                        storemonstersintable[elementtoupdate].reganim = obj.Anim
                        storemonstersintable[elementtoupdate].registerattack = API.SystemTime()
                    end
                    if(elementtoupdate ~= obj.Life) then
                        local differenceihealth = obj.Life - elementtoupdate
                        if(differenceihealth > 100) then
                            storemonstersintable[elementtoupdate].checked = 0
                        end
                    end
                    local hownearyou = CalculateDistance(ZaidejoX,ZaidejoY,korodinatess.x,korodinatess.y)
                    if(hownearyou >= 3) then
                        storemonstersintable[elementtoupdate].checked = 0
                    end
                    storemonstersintable[elementtoupdate].appearreg = API.SystemTime()
                    storemonstersintable[elementtoupdate].monstrhp = obj.Life
                    storemonstersintable[elementtoupdate].monstrox = korodinatess.x
                    storemonstersintable[elementtoupdate].monstroy = korodinatess.y
                else
                
                    table.insert(storemonstersintable , {memaddr = obj.Mem, registerattack = API.SystemTime(), reganim = obj.Anim, appearreg = API.SystemTime(),checked = 0,monstrhp = obj.Life,monstroid = obj.Id,monstrox = korodinatess.x, monstroy = korodinatess.y})
                end
            end
        end
    end
    local tableindextoremove = {}
    for indexindddsdssa, addwasdas in ipairs(storemonstersintable) do
        local istherestillmosnteringame = false
        for indexindddsdsssa, addwwasdas in ipairs(storemonstersintablenow) do
            if(addwasdas.memaddr == addwwasdas.memaddr) then
                istherestillmosnteringame = true
                break
            end
        end
        if(istherestillmosnteringame == false) then
            local timepassedsincedied = API.SystemTime() - addwasdas.appearreg
            if(timepassedsincedied > 500) then
                table.insert(tableindextoremove, indexindddsdssa)
            end
        end
    end
    if(#tableindextoremove > 0) then
        for isize = 1, #tableindextoremove do
            local indexToRemove = tableindextoremove[isize]
            if indexToRemove and storemonstersintable[indexToRemove] then
                table.remove(storemonstersintable, indexToRemove)
            end
        end
    end
    --checkforcoordinate(yourgoingxxx,yourgoingxxy)
    local howmuchexplosiosnns = 0
    for indexindddda, adasdas in ipairs(monsterinrasial) do
        if(adasdas.objectid == 122063) then
            howmuchexplosiosnns = howmuchexplosiosnns + 1
        end
    end
    local onlyexplsisoosimpleeen = {}
    local howmuchexplosiosnnaaas = 0
    for indexindddda, adasdas in ipairs(monsterinrasial) do
        if(adasdas.objectid == 122062) then
            if(gototorureue == false) then
                local distancijaa = CalculateDistance(firewalltowardstoxox,firewalltowardstoxoy,adasdas.x,adasdas.y)
                if(distancijaa <= 10) then
                    if(firewallmoregenerator == 0) then
                     
                        firewallmoregenerator = API.SystemTime() + 700
                    end
                end
            end
            howmuchexplosiosnnaaas = howmuchexplosiosnnaaas + 1
            table.insert(onlyexplsisoosimpleeen , {x = adasdas.x, y = adasdas.y})
        end
    end
    local onlyexplsisoon = {}
    for indexindddda, adasdas in ipairs(monsterinrasial) do
        if(adasdas.objectid == 122063) then
            table.insert(onlyexplsisoon , {x = adasdas.x, y = adasdas.y})
        end
    end
    -- firewalltowardstoxox,firewalltowardstoxoy
    if(firewallmoregenerator ~= 0) then
        if(API.SystemTime() > firewallmoregenerator) then
            if(#monsterinrasial > 0 and firewalltowardstoxox ~= -1) then
                local closestCoordsw = selectClosestCoordinate(monsterinrasial, firewalltowardstoxox, firewalltowardstoxoy, 0)
                if( closestCoordsw) then
                   
                    local pathuntiltarget,pathaftertarget,centerpath = move_to_target_and_beyond(closestCoordsw.x, closestCoordsw.y, firewalltowardstoxox, firewalltowardstoxoy, 30)
                  

                    local possibleCoordinates = generateAllPossibleCoordinates(ZaidejoX, ZaidejoY, 10)
                  
                    local filteredCoordinates = filterPredictedCoordinates(possibleCoordinates, pathuntiltarget, ZaidejoX, ZaidejoY,lavageisers,pathaftertarget,centerpath)
                    local addtocreteria = 0
                    for _, cornerrr in ipairs(Northwestcorner) do
                        local coordinatesinrealx, coordinatesinrealy = movezukarenabasedonarenaM(cornerrr.x,cornerrr.y)
                        if(ZaidejoX == coordinatesinrealx and ZaidejoY == coordinatesinrealy) then
                            addtocreteria = 1
                          
                        end
                    end
                    for _, cornerrr in ipairs(Southeastcorner) do
                        local coordinatesinrealx, coordinatesinrealy = movezukarenabasedonarenaM(cornerrr.x,cornerrr.y)
                        if(ZaidejoX == coordinatesinrealx and ZaidejoY == coordinatesinrealy) then
                            addtocreteria = 2
                         
                        end
                    end



                
                    local closestCoord = selectClosestCoordinate(filteredCoordinates, ZaidejoX, ZaidejoY, addtocreteria)
                    if(closestCoord) then

                        if(closestCoord.x ~= ZaidejoX or closestCoord.y ~= ZaidejoY) then

                            if(gototorureue == false) then
                                gototorureue = true
                                tooWasotheractiontriggered()
                                API.DoAction_Tile(WPOINT.new(closestCoord.x, closestCoord.y, 0))
                                Waitcustomsleep()
                             
                            end
                        end
                    end
                end
            end
            firewallmoregenerator = 0
        end
    end
    for indexindddda, adasdas in ipairs(lavageisers) do
        local xdifferencexx = adasdas.x - findzukkx
        local ydifferencexx = adasdas.y - findzukky
        if(xdifferencexx == -7 and ydifferencexx == -15) then
            local geiseratgamex, geiseratgamey = movezukarenabasedonarenaM(xdifferencexx,ydifferencexx)
            if(math.abs(ZaidejoX - geiseratgamex) == 0 and math.abs(ZaidejoY - geiseratgamey) == 0 and API.SystemTime() > checkisreallyoutofcoordinates) then
                -- Create a table to store the results
                local results = {}
                -- Iterate over the parameters and call the function
                for _, params in ipairs(parameters) do
                    local x, y = movezukarenabasedonarenaM(params[1], params[2])
                    table.insert(results, {x = x, y = y})
                end
                -- Randomly select a coordinate pair from the results
                math.randomseed(os.time())  -- Seed the random number generator to ensure different results each run
                local randomIndex = math.random(#results)  -- Get a random index from the results table
                local randomCoord = results[randomIndex]  -- Get the coordinate pair at the random index
                print('Moving away from geyser!')
                tooWasotheractiontriggered()
                checkisreallyoutofcoordinates = API.SystemTime() + 1500
                API.DoAction_Tile(WPOINT.new(randomCoord.x, randomCoord.y, 0))
                Waitcustomsleep()
                break
            end
        end
    end
    if(foddnfnf == false) then
        if(startfirstafterends == true) then
            
            gototorureue = false
        
            startfirstafterends = false
            wheregenratedd = false
            firewalltowardstoxox = -1
            firewalltowardstoxoy = -1
            monsterinrasial = {}
        end
    end
    local lowerpriotitoty = 0
    local decidewhichprayeron = 0
    local countmostprayerneeded = {}
    for imfexx, pramterrrr in ipairs(storemonstersintable) do
        if(storemonstersintable[imfexx].checked == 0) then
            if(pramterrrr.reganim == 16148 or pramterrrr.reganim == 16128) then -- ranged throw
                local timepassedsincedied = API.SystemTime() - pramterrrr.registerattack
                if(timepassedsincedied < 500) then
                    if(pramterrrr.monstrhp > 5000) then
                        countneedforprayer = countneedforprayer + 1
                        table.insert(countmostprayerneeded, 2)
                    end
                end
                storemonstersintable[imfexx].checked = 1
            elseif(pramterrrr.reganim == 16147) then -- ranged throw (further)
                local timepassedsincedied = API.SystemTime() - pramterrrr.registerattack
                if(timepassedsincedied > 1000) then
                    if(pramterrrr.monstrhp > 5000) then
                        countneedforprayer = countneedforprayer + 1
                        table.insert(countmostprayerneeded, 2)
                    end
                    storemonstersintable[imfexx].checked = 1
                end
            elseif(pramterrrr.reganim == 16102) then -- meele attack
                local timepassedsincedied = API.SystemTime() - pramterrrr.registerattack
                if(timepassedsincedied < 250) then
                    if(pramterrrr.monstrhp > 5000) then
                        countneedforprayer = countneedforprayer + 1
                        table.insert(countmostprayerneeded, 3)
                    end
                end
                storemonstersintable[imfexx].checked = 1
            end
            if(pramterrrr.monstroid == 28535 or pramterrrr.monstroid == 28545) then -- meele attack (mini goblins and flying bastard)
                if(pramterrrr.monstrhp > 5000) then
                    local hownearyou = CalculateDistance(ZaidejoX,ZaidejoY,pramterrrr.monstrox,pramterrrr.monstroy)
                    if(hownearyou <= 2) then
                        lowerpriotitoty = lowerpriotitoty + 1
                        if(lowerpriotitoty == 2) then
                            countneedforprayer = countneedforprayer + 1
                            table.insert(countmostprayerneeded, 4)
                            lowerpriotitoty = 0
                        end
                    end
                else
                    storemonstersintable[imfexx].checked = 1
                end
            end
        end
    end
    if(API.SystemTime() > constantneedforprayers) then
        countneedforprayer = 0
        constantneedforprayers = API.SystemTime() + 2000
    end
 

    local countdamagehighiness = 0
    for imfexx, pramterrrr in ipairs(storemonstersintable) do
        if(storemonstersintable[imfexx].checked == 1) then
            countdamagehighiness = countdamagehighiness + 1
        end
    end
    if(isdevotionwasacitvated == true) then
        if(Isdevotionactive() > 0) then -- devotion active
           
            isdevotionwasacitvated = false
            devotioncooldown = API.SystemTime() + 60000
            switchtosoulsplittts = 0
        else
            if(API.SystemTime() > isdevotionwasacitvatedTIME) then
              
                isdevotionwasacitvated = false
            end
        end
    end
    if(isreflectwasacitvated == true) then
        if(Isreflectactive() > 0) then -- reflect active
          
            isreflectwasacitvated = false
            reflectcooldown = API.SystemTime() + 30000
        else
            if(API.SystemTime() > isreflectwasacitvatedTIME) then
            
                isreflectwasacitvated = false
            end
        end
    end

    if(Onabilityafterlimitless ~= 0) then
        if(API.SystemTime() > Onabilityafterlimitless) then


            if(API.GetAddreline_() >=15) then
                if(abilithwhichtochoose == 1) then
                  
                    isreflectwasacitvatedTIME = API.SystemTime() + 1500
                    isreflectwasacitvated = true
                    tooWasotheractiontriggered()
                    API.DoAction_Ability("Reflect", 1, API.OFF_ACT_GeneralInterface_route)
                    Waitcustomsleep()
                elseif(abilithwhichtochoose == 2) then
                  
                    isdevotionwasacitvatedTIME = API.SystemTime() + 1500
                    isdevotionwasacitvated = true
                    tooWasotheractiontriggered()
                    API.DoAction_Ability("Devotion", 1, API.OFF_ACT_GeneralInterface_route)
                    Waitcustomsleep()
                end
            end
            Onabilityafterlimitless = 0
        end
    end

    if(limitlesswasacitvated == true) then
        if(Islimitlessactive() > 0 or API.GetAddreline_() >= 50) then
            
            limitlesswasacitvated = false
            limitlesscooldown = API.SystemTime() + 90000
            Onabilityafterlimitless = API.SystemTime() + (200 + API.Math_RandomNumber(1000))
        else
            if(API.SystemTime() > islimitlesswasacitvatedTIME) then
                
                limitlesswasacitvated = false
            end
        end
    end

    if(countneedforprayer >= 5) then -- lot monsters at once (devotion or reflect)
   
        if(limitlesswasacitvated == false and isdevotionwasacitvated == false and isreflectwasacitvated == false and Onabilityafterlimitless == 0) then
            if(API.SystemTime() > devotioncooldown) then
                if(Isreflectactive() <= 0) then -- reflect not active
                    if(Isdevotionactive() <= 0) then -- devotion not active
                        local kokstavoadrenalinas = API.GetAddreline_()
                        if(kokstavoadrenalinas >= 50) then
                            
                            isdevotionwasacitvatedTIME = API.SystemTime() + 2000
                            isdevotionwasacitvated = true
                            tooWasotheractiontriggered()
                            API.DoAction_Ability("Devotion", 1, API.OFF_ACT_GeneralInterface_route)
                            Waitcustomsleep()
                        else
                            if(kokstavoadrenalinas < 40 and kokstavoadrenalinas >= 15) then
                             
                                tooWasotheractiontriggered()
                                API.DoAction_Ability("Limitless", 1, API.OFF_ACT_GeneralInterface_route)
                                Waitcustomsleep()
                                abilithwhichtochoose = 2
                                limitlesswasacitvated = true
                                islimitlesswasacitvatedTIME = API.SystemTime() + 2000
                                -- limitless
                            end
                        end
                    end
                end
            end
            if(limitlesswasacitvated == false and isdevotionwasacitvated == false and isreflectwasacitvated == false and Onabilityafterlimitless == 0) then
                if(API.SystemTime() > reflectcooldown) then

                    if(Isdevotionactive() <= 0) then
                        if(Isreflectactive() <= 0) then
                            local kokstavoadrenalinas = API.GetAddreline_()
                            if(kokstavoadrenalinas >= 50) then
                                if(isreflectwasacitvated == false) then
                                    
                                 
                                    isreflectwasacitvatedTIME = API.SystemTime() + 2000
                                    isreflectwasacitvated = true
                                    tooWasotheractiontriggered()
                                    API.DoAction_Ability("Reflect", 1, API.OFF_ACT_GeneralInterface_route)
                                    Waitcustomsleep()
                                
                                end
                            else
                                if(kokstavoadrenalinas < 40 and kokstavoadrenalinas >= 15) then
                             
                                    tooWasotheractiontriggered()
                                    API.DoAction_Ability("Limitless", 1, API.OFF_ACT_GeneralInterface_route)
                                    Waitcustomsleep()
                                    abilithwhichtochoose = 1
                                    limitlesswasacitvated = true
                                    islimitlesswasacitvatedTIME = API.SystemTime() + 2000
                                    -- limitless
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if(#countmostprayerneeded > 0) then
        local number, count = findMostFrequent(countmostprayerneeded)
        decidewhichprayeron = number
     
        if(decidewhichprayeron == 4) then
            for imfexx, pramterrrr in ipairs(storemonstersintable) do
                if(pramterrrr.monstroid == 28535 or pramterrrr.monstroid == 28545) then -- meele attack (mini goblins and flying bastard)
                    local hownearyou = CalculateDistance(ZaidejoX,ZaidejoY,pramterrrr.monstrox,pramterrrr.monstroy)
                    if(hownearyou <= 2) then
                        storemonstersintable[imfexx].checked = 1
                    end
                end
            end
        end
    end
    if(decidewhichprayeron == 2) then -- ranged
        local blockactionsnow = false
        if(wheregenratedd == true) then
            if(API.SystemTime() > firewallwaitactions) then
                blockactionsnow = true
            end
        end
        if(API.SystemTime() > switchtosoulsplitttscooldown and blockactionsnow == false and API.SystemTime() > minintervalswithcprayers) then
            local isdrainingcurseavnv = false
            if(API.VB_FindPSettinOrder(1035, -1).state ~= 0) then
                isdrainingcurseavnv = true
            end
            local whenturnossplayer = 12
            local whenturnossplayerranged = 256
            if(isdrainingcurseavnv == true) then
                whenturnossplayer = 37
            end
            local kokaistatejeja = API.VB_FindPSettinOrder(3269, -1).state
            local retrieveststeeseeee = API.VB_FindPSettinOrder(3275, -1).state
            if(kokaistatejeja ~= whenturnossplayer and retrieveststeeseeee ~= whenturnossplayerranged) then
               
                savedecidedprayer = decidewhichprayeron
            
                minintervalswithcprayers = API.SystemTime() + (1000 + API.Math_RandomNumber(1000))
                minintervalswithcprayersss = API.SystemTime() + (500 + API.Math_RandomNumber(500))


                tooWasotheractiontriggered()
                API.DoAction_Ability("Deflect Ranged", 1, API.OFF_ACT_GeneralInterface_route)
                Waitcustomsleep()
            end
        end
    elseif(decidewhichprayeron == 3 or decidewhichprayeron == 4) then
        local blockactionsnow = false
        if(wheregenratedd == true) then
            if(API.SystemTime() > firewallwaitactions) then
                blockactionsnow = true
            end
        end
        if(API.SystemTime() > switchtosoulsplitttscooldown and blockactionsnow == false and API.SystemTime() > minintervalswithcprayers) then
            local isdrainingcurseavnv = false
            if(API.VB_FindPSettinOrder(1035, -1).state ~= 0) then
                isdrainingcurseavnv = true
            end
            local whenturnossplayer = 12
            local whenturnossplayermeele = 512
            if(isdrainingcurseavnv == true) then
                whenturnossplayer = 37
            end
            local kokaistatejeja = API.VB_FindPSettinOrder(3269, -1).state
            local retrieveststeeseeee = API.VB_FindPSettinOrder(3275, -1).state
            if(kokaistatejeja ~= whenturnossplayer and retrieveststeeseeee ~= whenturnossplayermeele) then
               
                savedecidedprayer = decidewhichprayeron
             
                tooWasotheractiontriggered()

                minintervalswithcprayers = API.SystemTime() + (1000 + API.Math_RandomNumber(1000))
                minintervalswithcprayersss = API.SystemTime() + (500 + API.Math_RandomNumber(500))


              
                API.DoAction_Ability("Deflect Melee", 1, API.OFF_ACT_GeneralInterface_route)
                Waitcustomsleep()
            end
        end
    end
end
function tooWasotheractiontriggered()
    local kieklaikopraedejotiti = API.SystemTime() - notcheckactionforthatlong
    if(kieklaikopraedejotiti < 200) then
        local howmuchmoresleep = (200 - kieklaikopraedejotiti)
        API.RandomSleep2(howmuchmoresleep+10, 100, 200)
    end
end
function Waitcustomsleep()
    notcheckactionforthatlong = API.SystemTime() + 200
end
while (API.Read_LoopyLoop()) do -----------------------------------------------------------------------------------
    Performgameanalyze()
    API.RandomSleep2(100, 10, 10)
end