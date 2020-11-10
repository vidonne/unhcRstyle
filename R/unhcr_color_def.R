#  UNHCR Brandbook ----
## Color sources

# Sources for color definitions:
# https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html
# https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html

# Primary colors: The UNHCR logo blue should be used as a main colour as well as an accent colour in necessary circumstances.

# unhcr_pal -----

#' @name unhcr_pal
#' @rdname unhcr_pal
#' @title unhcr default (web/sRGB) Primary color palette
#'
#' @description UNHCR primary color palette. \code{unhcr_pal}
#' provides the default UNHCR color palette
#' as a data frame containing 11 colors.
#'
#' This is the primary (web/sRGB) scale.
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_pal
#' dim(unhcr_pal)  # 1 11
#'
#' # Access by position:
#' unhcr_pal[1]    # 1nd named color "blue5" (as df)
#' unhcr_pal[[1]]  # 2nd color value "#0072BC"
#'
#' # Access by name:
#' unhcr_pal["blue5"]    # color "blue5" (as df)
#' unhcr_pal[["blue5"]]  # color value "#0072BC"
#'
#' # Plotting palette:
#' seecol(unhcr_pal)
#' }
#'
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal_blue}} for the UNHCR default blue palette;
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export
#'
unhcr_pal <- data.frame(                                 #  element:
  "blue1" = rgb(204, 227, 242, maxColorValue = 255),  #  1. blue1 (non-transparent):  20%
  "blue2" = rgb(153, 199, 228, maxColorValue = 255),  #  2. blue2 (non-transparent):  40%
  "blue3" = rgb(102, 170, 215, maxColorValue = 255),  #  3. blue3 (non-transparent):  60%
  "blue4" = rgb( 51, 142, 201, maxColorValue = 255),  #  4. blue4 (non-transparent):  80%
  "blue5" = rgb(  0, 114, 188, maxColorValue = 255),  #  5. blue5 (non-transparent): 100%: preferred color: "blue"
  "black" = rgb(  0,   0,   0, maxColorValue = 255),  #  6. black: preferred color: "black"
  "grey5" = rgb( 51,  51,  51, maxColorValue = 255),  #  7. grey5 (non-transparent):  80% black
  "grey4" = rgb(102, 102, 102, maxColorValue = 255),  #  8. grey4 (non-transparent):  60% black
  "grey3" = rgb(153, 153, 153, maxColorValue = 255),  #  9. grey3 (non-transparent):  40% black
  "grey2" = rgb(204, 204, 204, maxColorValue = 255),  # 10. grey2 (non-transparent):  20% black
  "white" = rgb(255, 255, 255, maxColorValue = 255),  # 11. white: preferred color: "white"
  stringsAsFactors = FALSE)

# Sensibly sorted version (position):
unhcr_pal <- unhcr_pal[c(5:1, 11:6)] # blue (1 as default) > white (6) > grey > black (11)

# unhcr_pal_blue -----
#' @name unhcr_pal_blue
#' @rdname unhcr_pal_blue
#' @title UNHCR blue color palette
#'
#' @description
#' BLUE:  PANTONE 300 C/U / CMYK 99 50 0 0
#' RGB 0 114 188 / HEX #0072BC
#' \code{unhcr_pal_blue} provides an additional UNHCR color palette
#' as a data frame containing 6 colors (shades of \code{\link{Blue}}).
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_pal_blue
#' dim(unhcr_pal_blue)  # 1 6
#'
#' # Preferred color:
#' unhcr_pal_blue[5]    # preferred (named) color "blue5" (as df)
#' unhcr_pal_blue[[5]]  # preferred color value "#0072BC"
#'
#' # Access by position:
#' unhcr_pal_blue[5]    # named color "blue5" (as df)
#' unhcr_pal_blue[[5]]  # color value "#0072BC"
#'
#' # Access by name:
#' unhcr_pal["blue5"]    # color "blue5" (as df)
#' unhcr_pal[["blue5"]]  # color value "#0072BC"
#'
#' # Plotting palette:
#' seecol(unhcr_pal_blue)
#' }
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with 5 main colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_darkblue}} for an alternative blue UNHCR color palette;
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_pal_blue

unhcr_pal_blue <- data.frame(                               #  element:
  "blue1" = rgb(204, 227, 242, maxColorValue = 255),  #  1. blue1 (non-transparent):  20%
  "blue2" = rgb(153, 199, 228, maxColorValue = 255),  #  2. blue2 (non-transparent):  40%
  "blue3" = rgb(102, 170, 215, maxColorValue = 255),  #  3. blue3 (non-transparent):  60%
  "blue4" = rgb( 51, 142, 201, maxColorValue = 255),  #  4. blue4 (non-transparent):  80%
  "blue5" = rgb(  0, 114, 188, maxColorValue = 255),  #  5. blue5 (non-transparent): 100%: preferred color: "Blue"
  "blue6" = rgb(  0,  86, 141, maxColorValue = 255),  #  5. blue6 (non-transparent): Darker shade
  stringsAsFactors = FALSE)

# unhcr_blue -----
#' @name unhcr_blue
#' @rdname unhcr_blue
#' @title UNHCR color blue
#'
#' @description Preferred color blue (as HEX character value): ----
#' \code{unhcr_blue} provides the preferred color of \code{\link{unhcr_pal_blue}}
#' (as an atomic HEX character value) and is defined as
#' \code{\link{unhcr_pal_blue}[[5]]}.
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_blue  # HEX character "#0072BC" (as value)
#' all.equal(unhcr_blue, unhcr_pal_blue[[5]])  # TRUE (same HEX values)
#'
#' seecol(unhcr_blue)  # view color and details
#' }
#' @family preferred colors
#'
#' @seealso
#' \code{\link{unhcr_pal_blue}} for the corresponding color palette;
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with 5 main colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_blue

unhcr_blue <- as.character(unhcr_pal_blue[[5]])
# HEX color value of blue.5 of unhcr_pal_blue OR unhcr_pal
names(unhcr_blue) <- "Blue"


# unhcr_pal_grey -----
#' @name unhcr_pal_grey
#' @rdname unhcr_pal_grey
#' @title UNHCR grey color palette
#'
#' @description   Using a Rich black for text can make printing
#'  difficult and the text less sharp. We recommend body copy
#'  is set in C0 M0 Y0 K100. \code{pal_grey} provides an additional UNHCR color palette
#' as a data frame containing 6 colors (shades of \code{\link{black}}).
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_pal_grey
#' dim(unhcr_pal_grey)  # 1 6
#' unhcr_pal_grey[4]    # preferred (named) color "grey4"
#' unhcr_pal_grey[[4]]  # preferred color "grey4" OR "#666666"
#'
#' # Plotting palette:
#' seecol(unhcr_pal_grey)
#' }
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with 5 main colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_darkblue}} for alternative to grey UNHCR color palettes;
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_pal_grey

unhcr_pal_grey <- data.frame(                               #  Element:
  "grey1" = rgb(230, 230, 230, maxColorValue = 255),  #  1.
  "grey2" = rgb(204, 204, 204, maxColorValue = 255),  #  2.
  "grey3" = rgb(153, 153, 153, maxColorValue = 255),  #  3.
  "grey4" = rgb(102, 102, 102, maxColorValue = 255),  #  4. preferred color: "grey"
  "grey5" = rgb( 51,  51,  51, maxColorValue = 255),  #  5.
  "black" = rgb(  0,   0,   0, maxColorValue = 255),  #  6.
  stringsAsFactors = FALSE)

# unhcr_grey -----
#' @name unhcr_grey
#' @rdname unhcr_grey
#' @title UNHCR color grey
#'
#' @description   \code{unhcr_grey} provides the preferred color of \code{\link{unhcr_pal_grey}}
#' (as an atomic HEX character value) and is defined as
#' \code{\link{unhcr_pal_grey}[[4]]}.
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_grey  # HEX character "#666666" (as value)
#' all.equal(unhcr_grey, unhcr_pal_grey[[4]])  # TRUE (same HEX values)
#'
#' seecol(unhcr_grey)  # view color and details
#' }
#' @family preferred colors
#'
#' @seealso
#' \code{\link{unhcr_pal_grey}} for the corresponding color palette;
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with 5 main colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show and use color palettes.
#'
#' @export unhcr_grey

unhcr_grey <- unhcr_pal_grey[[4]]  # HEX color value of grey.4 of unhcr_pal_grey
names(unhcr_grey) <- "Grey"

# unhcr_black -----
#' @name unhcr_black
#' @rdname unhcr_black
#' @title UNHCR color black
#'
#' @description   \code{unhcr_black} provides the preferred color of black
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_black  # "#000000"
#' }
#' @family preferred colors
#'
#' @seealso
#' \code{\link{unhcr_pal_grey}} for the corresponding color palette;
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with 5 main colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show and use color palettes.
#'
#' @export unhcr_black
unhcr_black <- unhcr_pal_grey[[6]]  # HEX color value of grey.6 of unhcr_pal_grey
names(unhcr_black) <- "Black"

# unhcr_white -----
#' @name unhcr_white
#' @rdname unhcr_white
#' @title UNHCR color white
#'
#' @description   \code{unhcr_white} provides the preferred color of white
#' (as an atomic HEX character value)
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_white  # "#FFFFFF"
#' }
#' @family preferred colors
#'
#' @seealso
#' \code{\link{unhcr_pal_grey}} for the corresponding color palette;
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with 5 main colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show and use color palettes.
#'
#' @export unhcr_white
unhcr_white <- unhcr_pal[[6]]  # HEX color value of white of unhcr_pal
names(unhcr_white) <- "White"



# unhcr_pal_yellow -----
#' @name unhcr_pal_yellow
#' @rdname unhcr_pal_yellow
#' @title UNHCR yellow color palette.
#'
#' @description  The secondary accent colour may be used in some circumstances
#' for a graphic element.
#' YELLOW: PANTONE PROCESS YELLOW C/U
#'   CMYK 3 1 100 0
#'   RGB 250 235 0
#'   HEX #FAEB00
#'   \code{unhcr_pal_yellow} provides an additional UNHCR color palette
#' as a data frame containing 6 colors (shades of
#' \code{\link{unhcr_yellow}}).
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_pal_yellow
#' dim(unhcr_pal_yellow)  # 1 6
#' unhcr_pal_yellow[5]    # preferred (named) color "yellow5"
#' unhcr_pal_yellow[[5]]  # preferred color "yellow5" OR "#FAEB00"
#'
#' # Plotting palette:
#' seecol(unhcr_pal_yellow)
#' }
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with all 5 colors of \code{\link{unhcr_yellow}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_pal_yellow

unhcr_pal_yellow <- data.frame(                               #  element:
  "yellow1" = rgb(254, 251, 204, maxColorValue = 255),  #  1. yellow1 (non-transparent)
  "yellow2" = rgb(253, 247, 153, maxColorValue = 255),  #  2. yellow2 (non-transparent)
  "yellow3" = rgb(252, 243, 102, maxColorValue = 255),  #  3. yellow3 (non-transparent)
  "yellow4" = rgb(251, 239,  51, maxColorValue = 255),  #  4. yellow4 (non-transparent)
  "yellow5" = rgb(250, 235,   0, maxColorValue = 255),  #  5. yellow5 (non-transparent): preferred color: "yellow"
  "yellow6" = rgb(200, 188,   0, maxColorValue = 255),  #  6. yellow6 (non-transparent)
  stringsAsFactors = FALSE)


# unhcr_yellow -----
#' @name unhcr_yellow
#' @rdname unhcr_yellow
#' @title Preferred color yellow (as HEX character value)
#'
#' @description UNHCR color yellow.
#'
#' \code{yellow} provides the preferred color of \code{\link{unhcr_pal_yellow}}
#' (as an atomic HEX character value) and is defined as
#' \code{\link{unhcr_pal_yellow}[[5]]}.
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_yellow  # HEX character "#FAEB00" (as value)
#' all.equal(unhcr_yellow, unhcr_pal_yellow[[5]])  # TRUE (same HEX values)
#' seecol(unhcr_yellow)  # view color and details
#' }
#'
#' @family preferred colors
#'
#' @seealso
#' \code{\link{unhcr_pal_yellow}} for the corresponding color palette;
#' \code{\link{unhcr_pal}} for the unhcr default color palette with all 5 colors of \code{\link{unhcr_pal_yellow}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export

unhcr_yellow <- unhcr_pal_yellow[[5]]  # HEX color value of yellow.5 of unhcr_pal_yellow
names(unhcr_yellow) <- "Yellow"




# unhcr_pal_darkblue -----
#' @name unhcr_pal_darkblue
#' @rdname unhcr_pal_darkblue
#' @title UNHCR darkblue color palette.
#'
#' @description  darkblue
#'  CMYK 99 83 36 27
#'  RGB 24 55 95
#'  HEX #18375F
#' \code{unhcr_pal_darkblue} provides an additional UNHCR color palette
#' as a data frame containing 6 colors (shades of
#' \code{\link{unhcr_darkblue}}).
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples {
#' unhcr_pal_darkblue
#' dim(unhcr_pal_darkblue)  # 1 6
#' unhcr_pal_darkblue[6]    # preferred (named) color "darkblue6"
#' unhcr_pal_darkblue[[6]]  # preferred color "darkblue6" OR "#18375F"
#'
#' # Plotting palette:
#' seecol(unhcr_pal_darkblue)
#' }
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with all 5 colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_blue}} for an alternative blue UNHCR color palette;
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_pal_darkblue

unhcr_pal_darkblue <- data.frame(                               #  element:
  "darkblue1" = rgb(232, 235, 239, maxColorValue = 255),  #  1. darkblue1 (non-transparent)
  "darkblue2" = rgb(209, 215, 223, maxColorValue = 255),  #  2. darkblue2 (non-transparent)
  "darkblue3" = rgb(163, 175, 191, maxColorValue = 255),  #  3. darkblue3 (non-transparent)
  "darkblue4" = rgb(116, 135, 159, maxColorValue = 255),  #  4. darkblue4 (non-transparent)
  "darkblue5" = rgb( 70,  95, 127, maxColorValue = 255),  #  5. darkblue5 (non-transparent)
  "darkblue6" = rgb( 24,  55,  95, maxColorValue = 255),  #  6. darkblue6 (non-transparent): preferred color: "darkblue"
  stringsAsFactors = FALSE)


# unhcr_darkblue -----
#' @name unhcr_darkblue
#' @rdname unhcr_darkblue
#' @title Preferred color darkblue (as HEX character value)
#'
#' @description UNHCR color darkblue.
#'
#' \code{darkblue} provides the preferred color of \code{\link{unhcr_pal_darkblue}}
#' (as an atomic HEX character value) and is defined as
#' \code{\link{unhcr_pal_darkblue}[[6]]}.
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples {
#' unhcr_darkblue # HEX character "#18375F" (as value)
#' all.equal(unhcr_darkblue, unhcr_pal_darkblue[[6]])  # TRUE (same HEX values)
#' seecol(unhcr_darkblue)  # view color and details
#' }
#' @family preferred colors
#'
#' @seealso
#' \code{\link{unhcr_pal_darkblue}} for the corresponding color palette;
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with all 5 colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export

unhcr_darkblue <- unhcr_pal_darkblue[[6]]  # HEX color value of darkblue.6 of unhcr_pal_darkblue
names(unhcr_darkblue) <- "Darkblue"



# unhcr_pal_green -----
#' @name unhcr_pal_green
#' @rdname unhcr_pal_green
#' @title UNHCR greem color palette.
#'
#' @description   UNHCR green color palette.
#' GREEN:  CMYK 90 0 52 0 / RGB 0 179 152 / HEX #00B398
#' \code{pal_green} provides an additional UNHCR color palette
#' as a data frame containing 6 colors (shades of
#' \code{\link{green}}).
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples {
#' unhcr_pal_green
#' dim(unhcr_pal_green)  # 1 6
#' unhcr_pal_green[5]    # preferred (named) color "green5"
#' unhcr_pal_green[[5]]  # preferred color "green5" OR "#00B398"
#'
#' # Plotting palette:
#' seecol(unhcr_pal_green)
#' }
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with all 5 colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_pal_green

unhcr_pal_green <- data.frame(                               #  element:
  "green1" = rgb(204, 240, 234, maxColorValue = 255),  #  1. green1 (non-transparent)
  "green2" = rgb(153, 225, 214, maxColorValue = 255),  #  2. green2 (non-transparent)
  "green3" = rgb(102, 209, 193, maxColorValue = 255),  #  3. green3 (non-transparent)
  "green4" = rgb( 51, 194, 173, maxColorValue = 255),  #  4. green4 (non-transparent)
  "green5" = rgb(  0, 179, 152, maxColorValue = 255),  #  5. green5 (non-transparent): preferred color: "green"
  "green6" = rgb(  0, 134, 114, maxColorValue = 255),  #  6. green6 (non-transparent)
  stringsAsFactors = FALSE)



# unhcr_green -----
#' @name unhcr_green
#' @rdname unhcr_green
#' @title Preferred color darkblue (as HEX character value)
#'
#' @description UNHCR color green.
#'
#' \code{green} provides the preferred color of \code{\link{unhcr_pal_green}}
#' (as an atomic HEX character value) and is defined as
#' \code{\link{unhcr_pal_green}[[5]]}.
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples {
#' unhcr_green # HEX character "#00B398" (as value)
#' all.equal(unhcr_green, unhcr_pal_green[[5]])  # TRUE (same HEX values)
#'
#' seecol(unhcr_green)  # view color and details
#' }
#' @family preferred colors
#'
#' @seealso
#' \code{\link{unhcr_pal_green}} for the corresponding color palette;
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with all 5 colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_green

unhcr_green <- unhcr_pal_green[[5]]  # HEX color value of green.5 of unhcr_pal_green
names(unhcr_green) <- "Green"


# unhcr_pal_red -----
#' @name unhcr_pal_red
#' @rdname unhcr_pal_red
#' @title UNHCR red color palette.
#'
#' @description   UNHCR red color palette.
#'  RED: CMYK 0 87 52 0 / RGB 239 74 96 / HEX #EF4A60
#'
#' \code{pal_red} provides an additional UNHCR color palette
#' as a data frame containing 6 colors (shades of
#' \code{\link{unhcr_red}}).
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples {
#' unhcr_pal_red
#' dim(unhcr_pal_red)  # 1 6
#' unhcr_pal_red[5]    # preferred (named) color "red5"
#' unhcr_pal_red[[5]]  # preferred color "red5" OR "#EF4A60"
#'
#' # Plotting palette:
#' seecol(unhcr_pal_red)
#' }
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with all 5 colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_pal_red

unhcr_pal_red <- data.frame(                               #  element:
  "red1" = rgb(252, 219, 223, maxColorValue = 255),  #  1. red1 (non-transparent)
  "red2" = rgb(249, 183, 191, maxColorValue = 255),  #  2. red2 (non-transparent)
  "red3" = rgb(245, 146, 160, maxColorValue = 255),  #  3. red3 (non-transparent)
  "red4" = rgb(242, 110, 128, maxColorValue = 255),  #  4. red4 (non-transparent)
  "red5" = rgb(239,  74,  96, maxColorValue = 255),  #  5. red5 (non-transparent): preferred color: "red"
  "red6" = rgb(179,  56,  72, maxColorValue = 255),  #  6. red6 (non-transparent)
  stringsAsFactors = FALSE)


# unhcr_red -----
#' @name unhcr_red
#' @rdname unhcr_red
#' @title Preferred color red (as HEX character value)
#'
#' @description UNHCR color red.
#'
#' \code{red} provides the preferred color of \code{\link{unhcr_pal_red}}
#' (as an atomic HEX character value) and is defined as
#' \code{\link{unhcr_pal_red}[[5]]}.
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples {
#' unhcr_red  # HEX character "#EF4A60" (as value)
#' all.equal(unhcr_red, unhcr_pal_red[[5]])  # TRUE (same HEX values)
#' seecol(unhcr_red)  # view color and details
#' }
#' @family preferred colors
#'
#' @seealso
#' \code{\link{unhcr_pal_red}} for the corresponding color palette;
#' \code{\link{unhcr_pal}} for the UNHCR default color palette with all 5 colors of \code{\link{unhcr_pal_blue}};
#' \code{\link{unhcr_pal_primary}} for a UNHCR color palette with primary colors;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_red

unhcr_red <- unhcr_pal_red[[5]]  # HEX color value of red.5 of unhcr_pal_red
names(unhcr_red) <- "Red"


# unhcr_pal_primary -----
#' @name unhcr_pal_primary
#' @rdname unhcr_pal_primary
#' @title Scale of all 4 preferred colors, Other combinations of UNHCR color palettes
#'
#' @description  \code{unhcr_pal_primary} provides an additional UNHCR color palette
#' that collects the primary UNHCR color as a data frame containing 4 colors.
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples {
#' unhcr_pal_primary
#' dim(unhcr_pal_primary)  # 1 4
#'
#' # Access by position:
#' unhcr_pal_primary[1]    # color blue (as df)
#' unhcr_pal_primary[[1]]  # color value "#0072BC"
#'
#' # Access by name:
#' unhcr_pal_primary["Blue"]   # color "blue5" (as df)
#' unhcr_pal_primary[["Blue"]] # color value "#0072BC"
#'
#' # Plotting palette:
#' seecol(unhcr_pal_primary)
#' }
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal}} for the default UNHCR color palette;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_pal_primary
unhcr_pal_primary <- data.frame( # Element:
  "Blue"     = unhcr_blue,          # unhcr_pal_blue[[5]],     #  1. blue
  "Black"    = unhcr_black,         # unhcr_pal_grey[[6]],     #  2. black
  "White"    = unhcr_white,         # unhcr_pal[[6]],    #  3. white
  "Yellow"   = unhcr_yellow,        # unhcr_pal_yellow[[5]],   #  4. yellow
  stringsAsFactors = FALSE)






# unhcr_pal_graphic -----
#' @name unhcr_pal_graphic
#' @rdname unhcr_pal_graphic
#' @title Scale of all XX preferred colors for graphic creation
#'
#' @description  UNHCR preferred graphic colors to be use as a main set for graphics creation.
#' \code{unhcr_pal_graphic} provides an additional UNHCR color palette
#' that collects the preferred UNHCR colors for graphics as a data frame containing 6 colors.
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples {
#' unhcr_pal_graphic
#' dim(unhcr_pal_graphic)
#'
#' # Access by position:
#' unhcr_pal_graphic[1]    # color blue (as df)
#' unhcr_pal_graphic[[1]]  # color value "#0072BC"
#'
#' # Access by name:
#' unhcr_pal_graphic["Blue"]   # color "blue5" (as df)
#' unhcr_pal_graphic[["Blue"]] # color value "#0072BC"
#'
#' # Plotting palette:
#' seecol(unhcr_pal_graphic)
#' }
#'
#' @family color palettes
#'
#' @seealso
#' \code{\link{unhcr_pal}} for the default UNHCR color palette;
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.
#'
#' @export unhcr_pal_graphic

unhcr_pal_graphic <- data.frame( # Element:
  "Blue"     = unhcr_pal_blue[[5]],     #  1. blue
  "Darkblue" = unhcr_pal_darkblue[[6]], #  2. darkblue
  "Green"    = unhcr_pal_green[[5]],    #  3. green
  "Grey3"    = unhcr_pal_grey[[3]],     #  4. grey3
  "Red"      = unhcr_pal_red[[5]],      #  5. red
  "Blue3"    = unhcr_pal_blue[[3]], #  6. blue3
  stringsAsFactors = FALSE)



# unhcr_all_pal_graphic -----
#' @name unhcr_all_pal_graphic
#' @rdname unhcr_all_pal_graphic
#' @title Look-up list of palettes
#' @export unhcr_all_pal_graphic
unhcr_all_pal_graphic <- c("unhcr_pal_blue",
                           "unhcr_pal_grey",
                           "unhcr_pal_darkblue",
                           "unhcr_pal_green",
                           "unhcr_pal_red",
                           "unhcr_pal_yellow",
                           "unhcr_pal_graphic")

#' @name unhcr_all_pal
#' @rdname unhcr_all_pal
#' @title Look-up list of palettes
#' @export unhcr_all_pal
unhcr_all_pal <- c("unhcr_pal",
                   "unhcr_pal_primary",
                   "unhcr_all_pal_graphic")


## ToDo: ------

# (+) Additional elements:
# -Fix calling above all_palunhcr lists


