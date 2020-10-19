## color_def_unhcr.R | unhcr
## ipda | unhcr.org |  2020
## ---------------------------

## Define colors and color palettes.

# Color palettes: ------

# (A) Primary color palette: -----

#   (1) unhcr default (web/sRGB) palette: ---- 

# Definition: 

pal_unhcr <- data.frame(                                 #  element: 
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
# pal_unhcr

# Documentation:

#' UNHCR primary color palette.
#'
#' \code{pal_unhcr} provides the default UNHCR color palette  
#' as a data frame containing 11 colors.
#'
#' This is the primary (web/sRGB) scale. 
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples
#' pal_unhcr
#' dim(pal_unhcr)  # 1 11
#' 
#' # Access by position:
#' pal_unhcr[1]    # 1nd named color "blue5" (as df)
#' pal_unhcr[[1]]  # 2nd color value "#0072BC"
#' 
#' # Access by name: 
#' pal_unhcr["blue5"]    # color "blue5" (as df)
#' pal_unhcr[["blue5"]]  # color value "#0072BC"
#' 
#' # Plotting palette:
#' seecol(pal_unhcr)
#'
#' @family color palettes
#'
#' @seealso
#' \code{\link{pal_blue}} for the UNHCR default blue palette; 
#' \code{\link{pal_unhcr_pref}} for a uni.kn color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

# Sensibly sorted version (position):
pal_unhcr <- pal_unhcr[c(5:1, 11:6)] # blue (1 as default) > white (6) > grey > black (11)

# # Check:
# pal_unhcr
# =>
#     blue5   blue4   blue3   blue2   blue1   white   grey2   grey3   grey4   grey5   black
# 1 #0072BC #338EC9 #66AAD7 #99C7E4 #CCE3F2 #FFFFFF #CCCCCC #999999 #666666 #333333 #000000
# 
# names(pal_unhcr)



# (B) Additional unhcr color palettes: -----

#  (1) blue: ----- 

#   (a) UNHCR Brandbook: ---- 

# Primary colors: The UNHCR logo blue should be used as a main colour as well as an accent colour in necessary circumstances.  
# BLUE
# PANTONE 300 C/U
# CMYK 99 50 0 0
# RGB 0 114 188
# HEX #0072BC


#   (b) Documentation: ---- 

#' UNHCR blue color palette.
#'
#' \code{pal_blue} provides an additional UNHCR color palette 
#' as a data frame containing 6 colors (shades of 
#' \code{\link{Blue}}).  
#' 
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples
#' pal_blue
#' dim(pal_blue)  # 1 6
#' 
#' # Preferred color:
#' pal_blue[5]    # preferred (named) color "blue5" (as df)
#' pal_blue[[5]]  # preferred color value "#0072BC"
#' 
#' # Access by position:
#' pal_blue[5]    # named color "blue5" (as df)
#' pal_blue[[5]]  # color value "#0072BC"
#' 
#' # Access by name: 
#' pal_unhcr["blue5"]    # color "blue5" (as df) 
#' pal_unhcr[["blue5"]]  # color value "#0072BC"
#' 
#' # Plotting palette:
#' seecol(pal_blue)
#'
#' @family color palettes
#'
#' @seealso 
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with 5 main colors of \code{\link{pal_blue}}; 
#' \code{\link{pal_darkblue}} for an alternative blue UNHCR color palette;  
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

#   (c) Definition: ---- 

pal_blue <- data.frame(                               #  element: 
  "blue1" = rgb(204, 227, 242, maxColorValue = 255),  #  1. blue1 (non-transparent):  20%
  "blue2" = rgb(153, 199, 228, maxColorValue = 255),  #  2. blue2 (non-transparent):  40%
  "blue3" = rgb(102, 170, 215, maxColorValue = 255),  #  3. blue3 (non-transparent):  60%
  "blue4" = rgb( 51, 142, 201, maxColorValue = 255),  #  4. blue4 (non-transparent):  80%
  "blue5" = rgb(  0, 114, 188, maxColorValue = 255),  #  5. blue5 (non-transparent): 100%: preferred color: "Blue"
  "blue6" = rgb(  0,  86, 141, maxColorValue = 255),  #  5. blue6 (non-transparent): Darker shade
  stringsAsFactors = FALSE)


#   (d) Named color blue (as df): ---- 

##|  UNHCR color blue (as df).
##|  
##|  \code{blue} provides the preferred color of \code{\link{pal_blue}}
##|  (as an atomic data frame) and is defined as
##|  \code{\link{pal_blue}[5]}.
##|  
##|  See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
##|  
##|  @examples
##|  # blue  # "blue5" with value "#0072BF" (as df)
##|  # all.equal(blue, pal_blue[5])  # TRUE (both df)
##|  
##|  @family named colors (as df)
##|  
##|  @seealso
##|  \code{\link{pal_blue}} for the corresponding color palette;
##|  \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors;
##|  \code{\link{pal_unhcr}} for the default UNHCR color palette;
##|  \code{\link{pal_n}} to get \code{n} dedicated colors of a known color palette.

# blue <- pal_blue[5]  # == blue.5 of pal_blue OR pal_unhcr 

## Check:
# blue

#   (e) Preferred color blue (as HEX character value): ---- 

#' UNHCR color blue. 
#' 
#' \code{blue} provides the preferred color of \code{\link{pal_blue}} 
#' (as an atomic HEX character value) and is defined as 
#' \code{\link{pal_blue}[[5]]}. 
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples
#' blue  # HEX character "#0072BC" (as value)
#' all.equal(blue, pal_blue[[5]])  # TRUE (same HEX values)
#' 
#' seecol(blue)  # view color and details
#' 
#' @family preferred colors 
#'
#' @seealso
#' \code{\link{pal_blue}} for the corresponding color palette; 
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with 5 main colors of \code{\link{pal_blue}};  
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

blue <- pal_blue[[5]]  # HEX color value of blue.5 of pal_blue OR pal_unhcr 

names(blue) <- "Blue"

## Check:
#  blue # "#0072BC"
#  names(blue)

#  (2) grey: -----

#   (a) UNHCR Brandbook: ---- 

# Using a Rich black for text can make printing difficult and the text less sharp. We recommend body copy is set in C0 M0 Y0 K100. 
# RICH BLACK
# PANTONE BLACK 6 C/U
# CMYK 78 68 67 90
# RGB 0 0 0
# HEX #00000

#   (b) Documentation: ----  

#' UNHCR grey color palette.
#'
#' \code{pal_grey} provides an additional UNHCR color palette  
#' as a data frame containing 6 colors (shades of 
#' \code{\link{black}}). 
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples
#' pal_grey
#' dim(pal_grey)  # 1 6
#' pal_grey[4]    # preferred (named) color "grey4" 
#' pal_grey[[4]]  # preferred color "grey4" OR "#666666"
#' 
#' # Plotting palette:
#' seecol(pal_grey)
#'
#' @family color palettes
#'
#' @seealso
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with 5 main colors of \code{\link{pal_blue}}; 
#' \code{\link{pal_darkblue}} for alternative to grey UNHCR color palettes;  
#' \code{\link{pal_unikn_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

#   (c) Definition: ----  

pal_grey <- data.frame(                               #  Element: 
  "grey1" = rgb(230, 230, 230, maxColorValue = 255),  #  1. 
  "grey2" = rgb(204, 204, 204, maxColorValue = 255),  #  2. 
  "grey3" = rgb(153, 153, 153, maxColorValue = 255),  #  3. 
  "grey4" = rgb(102, 102, 102, maxColorValue = 255),  #  4. preferred color: "grey" 
  "grey5" = rgb( 51,  51,  51, maxColorValue = 255),  #  5.    
  "black" = rgb(  0,   0,   0, maxColorValue = 255),  #  6. 
  stringsAsFactors = FALSE)

#   (d) Named color grey (as df): ---- 

##| UNHCR color grey (as df).
##| 
##| \code{grey} provides the preferred color of \code{\link{pal_grey}}
##| (as an atomic data frame) and is defined as
##| \code{\link{pal_grey}[4]}.
##| 
##| See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
##| 
##| @examples
##| # grey  # name "grey4" with color value "#666666" (as df)
##| # all.equal(grey, pal_grey[4])  # TRUE (both df)
##| 
##| @family named colors (as df)
##| 
##| @seealso
##| \code{\link{pal_grey}} for the corresponding color palette;
##| \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors;
##| \code{\link{pal_unhcr}} for the default uni.kn color palette;
##| \code{\link{seecol}} to show color palettes;
##| \code{\link{usecol}} to use color palettes. 

# grey <- pal_grey[4]  # == grey.4 of pal_grey 

## Check:
# grey

#   (e) Preferred color grey (as HEX character value): ---- 

#' UNHCR color grey. 
#' 
#' \code{grey} provides the preferred color of \code{\link{pal_grey}} 
#' (as an atomic HEX character value) and is defined as 
#' \code{\link{pal_grey}[[4]]}. 
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples
#' grey  # HEX character "#666666" (as value)
#' all.equal(grey, pal_grey[[4]])  # TRUE (same HEX values)
#' 
#' seecol(grey)  # view color and details
#' 
#' @family preferred colors 
#'
#' @seealso 
#' \code{\link{pal_grey}} for the corresponding color palette; 
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with 5 main colors of \code{\link{pal_blue}}; 
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show and use color palettes.  
#'
#' @export

grey <- pal_grey[[4]]  # HEX color value of grey.4 of pal_grey 

names(grey) <- "Grey"

## Check:
# grey  # "#666666"
# names(grey)

black <- pal_grey[[6]]  # HEX color value of grey.6 of pal_grey 

names(black) <- "Black"

## Check:
# black  # "#000000"
# names(black)

white <- pal_unhcr[[6]]  # HEX color value of white of pal_unhcr 

names(white) <- "White"

## Check:
# white  # "#FFFFFF"
# names(white)


#  (3) yellow: ----- 

#   (a) UNHCR Brandbook: ---- 

# The secondary accent colour may be used in some circumstances for a graphic element. 
# YELLOW
# PANTONE PROCESS YELLOW C/U
# CMYK 3 1 100 0
# RGB 250 235 0
# HEX #FAEB00

#   (b) Documentation: ---- 

#' UNHCR yellow color palette.
#'
#' \code{pal_yellow} provides an additional UNHCR color palette  
#' as a data frame containing 6 colors (shades of 
#' \code{\link{yellow}}). 
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples
#' pal_yellow
#' dim(pal_yellow)  # 1 6
#' pal_yellow[5]    # preferred (named) color "yellow5"
#' pal_yellow[[5]]  # preferred color "yellow5" OR "#FAEB00"
#' 
#' # Plotting palette:
#' seecol(pal_yellow)
#'
#' @family color palettes
#'
#' @seealso
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with all 5 colors of \code{\link{pal_seeblau}}; 
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.  
#'
#' @export

#   (c) Definition: ---- 

pal_yellow <- data.frame(                               #  element: 
  "yellow1" = rgb(254, 251, 204, maxColorValue = 255),  #  1. yellow1 (non-transparent)
  "yellow2" = rgb(253, 247, 153, maxColorValue = 255),  #  2. yellow2 (non-transparent)
  "yellow3" = rgb(252, 243, 102, maxColorValue = 255),  #  3. yellow3 (non-transparent)
  "yellow4" = rgb(251, 239,  51, maxColorValue = 255),  #  4. yellow4 (non-transparent)
  "yellow5" = rgb(250, 235,   0, maxColorValue = 255),  #  5. yellow5 (non-transparent): preferred color: "yellow"
  "yellow6" = rgb(200, 188,   0, maxColorValue = 255),  #  6. yellow6 (non-transparent)
  stringsAsFactors = FALSE)

#   (d) Named color yellow (as df): ---- 

##| UNHCR color yellow (as df).
##| 
##| \code{yellow} provides the preferred color of \code{\link{pal_yellow}}
##| (as an atomic data frame) and is defined as
##| \code{\link{pal_yellow}[5]}.
##| 
##| See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
##| 
##| @examples
##| # yellow  # name "yellow4" and color value "#FAEB00" (as df)
##| # all.equal(yellow, pal_yellow[5])  # TRUE (both df)
##| 
##| @family named colors (as df)
##| 
##| @seealso
##| \code{\link{pal_yellow}} for the corresponding color palette;
##| \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors;
##| \code{\link{pal_unhcr}} for the default UNHCR color palette;
##| \code{\link{seecol}} to show and use color palettes. 

# yellow <- pal_yellow[5]  # == yellow.5 of pal_yellow: "yellow5" OR "#FAEB00"

## Check:
# yellow

#   (e) Preferred color yellow (as HEX character value): ---- 

#' UNHCR color yellow.  
#' 
#' \code{yellow} provides the preferred color of \code{\link{pal_yellow}} 
#' (as an atomic HEX character value) and is defined as 
#' \code{\link{pal_yellow}[[5]]}. 
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} for details.
#'
#' @examples
#' yellow  # HEX character "#FAEB00" (as value)
#' all.equal(yellow, pal_yellow[[5]])  # TRUE (same HEX values)
#' 
#' seecol(yellow)  # view color and details
#' 
#' @family preferred colors 
#'
#' @seealso
#' \code{\link{pal_yellow}} for the corresponding color palette; 
#' \code{\link{pal_unhcr}} for the unhcr default color palette with all 5 colors of \code{\link{pal_seeblau}}; 
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

yellow <- pal_yellow[[5]]  # HEX color value of yellow.5 of pal_yellow 

names(yellow) <- "Yellow"

## Check:
# yellow  # "#FAEB00"



#  (4) darkblue: -----

#   (a) UNHCR Data visualization color palette: ---- 

# DARK BLUE
# CMYK 99 83 36 27
# RGB 24 55 95
# HEX #18375F

#   (b) Documentation: ----  

#' UNHCR darkblue color palette.
#'
#' \code{pal_darkblue} provides an additional UNHCR color palette  
#' as a data frame containing 6 colors (shades of 
#' \code{\link{darkblue}}). 
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples
#' pal_darkblue
#' dim(pal_darkblue)  # 1 6
#' pal_darkblue[6]    # preferred (named) color "darkblue6"
#' pal_darkblue[[6]]  # preferred color "darkblue6" OR "#18375F"
#' 
#' # Plotting palette:
#' seecol(pal_darkblue)
#'
#' @family color palettes
#'
#' @seealso
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with all 5 colors of \code{\link{pal_blue}}; 
#' \code{\link{pal_blue}} for an alternative blue UNHCR color palette;  
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

#   (c) Definition: ---- 

pal_darkblue <- data.frame(                               #  element: 
  "darkblue1" = rgb(232, 235, 239, maxColorValue = 255),  #  1. darkblue1 (non-transparent)
  "darkblue2" = rgb(209, 215, 223, maxColorValue = 255),  #  2. darkblue2 (non-transparent)
  "darkblue3" = rgb(163, 175, 191, maxColorValue = 255),  #  3. darkblue3 (non-transparent)
  "darkblue4" = rgb(116, 135, 159, maxColorValue = 255),  #  4. darkblue4 (non-transparent)
  "darkblue5" = rgb( 70,  95, 127, maxColorValue = 255),  #  5. darkblue5 (non-transparent)
  "darkblue6" = rgb( 24,  55,  95, maxColorValue = 255),  #  6. darkblue6 (non-transparent): preferred color: "darkblue"
  stringsAsFactors = FALSE)

#   (d) Named color darkblue (as df): ---- 

##| UNHCR color darkblue (as df). 
##| 
##| \code{darkblue} provides the preferred color of \code{\link{pal_darkblue}} 
##| (as an atomic data frame) and is defined as 
##| \code{\link{pal_darkblue}[6]}. 
##| 
##| See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
##|
##| @examples
##| # darkblue  # name "darkblue" and color value "#18375F" (as df)
##| # all.equal(darkblue, pal_darkblue[6])  # TRUE (both df)
##| 
##| @family named colors (as df) 
##|
##| @seealso
##| \code{\link{pal_darkblue}} for the corresponding color palette; 
##| \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
##| \code{\link{pal_unhcr}} for the default UNHCR color palette; 
##| \code{\link{seecol}} to show and use color palettes.  

# darkblue <- pal_darkblue[6]  # == darkblue.6 of pal_darkblue: "darkblue6" OR "#18375F"

## Check:
# darkblue

#   (e) Preferred color darkblue (as HEX character value): ---- 

#' UNHCR color darkblue. 
#' 
#' \code{darkblue} provides the preferred color of \code{\link{pal_darkblue}} 
#' (as an atomic HEX character value) and is defined as 
#' \code{\link{pal_darkblue}[[6]]}. 
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples
#' darkblue  # HEX character "#18375F" (as value)
#' all.equal(darkblue, pal_darkblue[[6]])  # TRUE (same HEX values)
#' 
#' seecol(darkblue)  # view color and details
#' 
#' @family preferred colors 
#'
#' @seealso
#' \code{\link{pal_darkblue}} for the corresponding color palette; 
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with all 5 colors of \code{\link{pal_blue}};
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

darkblue <- pal_darkblue[[6]]  # HEX color value of darkblue.6 of pal_darkblue 

names(darkblue) <- "Darkblue"

## Check:
# darkblue  #  "#18375F"



#  (5) green: -----

#   (a) UNHCR Data visualization color palette: ---- 

# GREEN
# CMYK 90 0 52 0
# RGB 0 179 152
# HEX #00B398

#   (b) Documentation: ----  

#' UNHCR green color palette.
#'
#' \code{pal_green} provides an additional UNHCR color palette  
#' as a data frame containing 6 colors (shades of 
#' \code{\link{green}}). 
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples
#' pal_green
#' dim(pal_green)  # 1 6
#' pal_green[5]    # preferred (named) color "green5"
#' pal_green[[5]]  # preferred color "green5" OR "#00B398"
#' 
#' # Plotting palette:
#' seecol(pal_green)
#'
#' @family color palettes
#'
#' @seealso
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with all 5 colors of \code{\link{pal_blue}}; 
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

#   (c) Definition: ---- 

pal_green <- data.frame(                               #  element: 
  "green1" = rgb(204, 240, 234, maxColorValue = 255),  #  1. green1 (non-transparent)
  "green2" = rgb(153, 225, 214, maxColorValue = 255),  #  2. green2 (non-transparent)
  "green3" = rgb(102, 209, 193, maxColorValue = 255),  #  3. green3 (non-transparent)
  "green4" = rgb( 51, 194, 173, maxColorValue = 255),  #  4. green4 (non-transparent)
  "green5" = rgb(  0, 179, 152, maxColorValue = 255),  #  5. green5 (non-transparent): preferred color: "green"
  "green6" = rgb(  0, 134, 114, maxColorValue = 255),  #  6. green6 (non-transparent)
  stringsAsFactors = FALSE)

#   (d) Named color green (as df): ---- 

##| UNHCR color green (as df). 
##| 
##| \code{green} provides the preferred color of \code{\link{pal_green}} 
##| (as an atomic data frame) and is defined as 
##| \code{\link{pal_green}[5]}. 
##| 
##| See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
##|
##| @examples
##| # green  # name "green" and color value "#00B398" (as df)
##| # all.equal(green, pal_green[5])  # TRUE (both df)
##| 
##| @family named colors (as df) 
##|
##| @seealso
##| \code{\link{pal_green}} for the corresponding color palette; 
##| \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
##| \code{\link{pal_unhcr}} for the default UNHCR color palette; 
##| \code{\link{seecol}} to show and use color palettes.  

# green <- pal_green[5]  # == green.5 of pal_green: "green5" OR "#00B398"

## Check:
# green

#   (e) Preferred color green (as HEX character value): ---- 

#' UNHCR color green. 
#' 
#' \code{green} provides the preferred color of \code{\link{pal_green}} 
#' (as an atomic HEX character value) and is defined as 
#' \code{\link{pal_green}[[5]]}. 
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples
#' green  # HEX character "#00B398" (as value)
#' all.equal(green, pal_green[[5]])  # TRUE (same HEX values)
#' 
#' seecol(green)  # view color and details
#' 
#' @family preferred colors 
#'
#' @seealso
#' \code{\link{pal_green}} for the corresponding color palette; 
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with all 5 colors of \code{\link{pal_blue}};
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

green <- pal_green[[5]]  # HEX color value of green.5 of pal_green 

names(green) <- "Green"

## Check:
# green  #  "#00B398"



#  (6) red: -----

#   (a) UNHCR Data visualization color palette: ---- 

# RED
# CMYK 0 87 52 0
# RGB 239 74 96
# HEX #EF4A60

#   (b) Documentation: ----  

#' UNHCR red color palette.
#'
#' \code{pal_red} provides an additional UNHCR color palette  
#' as a data frame containing 6 colors (shades of 
#' \code{\link{red}}). 
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples
#' pal_red
#' dim(pal_red)  # 1 6
#' pal_red[5]    # preferred (named) color "red5"
#' pal_red[[5]]  # preferred color "red5" OR "#EF4A60"
#' 
#' # Plotting palette:
#' seecol(pal_red)
#'
#' @family color palettes
#'
#' @seealso
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with all 5 colors of \code{\link{pal_blue}}; 
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

#   (c) Definition: ---- 

pal_red <- data.frame(                               #  element: 
  "red1" = rgb(252, 219, 223, maxColorValue = 255),  #  1. red1 (non-transparent)
  "red2" = rgb(249, 183, 191, maxColorValue = 255),  #  2. red2 (non-transparent)
  "red3" = rgb(245, 146, 160, maxColorValue = 255),  #  3. red3 (non-transparent)
  "red4" = rgb(242, 110, 128, maxColorValue = 255),  #  4. red4 (non-transparent)
  "red5" = rgb(239,  74,  96, maxColorValue = 255),  #  5. red5 (non-transparent): preferred color: "red"
  "red6" = rgb(179,  56,  72, maxColorValue = 255),  #  6. red6 (non-transparent)
  stringsAsFactors = FALSE)

#   (d) Named color red (as df): ---- 

##| UNHCR color red (as df). 
##| 
##| \code{red} provides the preferred color of \code{\link{pal_red}} 
##| (as an atomic data frame) and is defined as 
##| \code{\link{pal_red}[5]}. 
##| 
##| See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
##|
##| @examples
##| # red  # name "red" and color value "#EF4A60" (as df)
##| # all.equal(red, pal_red[5])  # TRUE (both df)
##| 
##| @family named colors (as df) 
##|
##| @seealso
##| \code{\link{pal_red}} for the corresponding color palette; 
##| \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
##| \code{\link{pal_unhcr}} for the default UNHCR color palette; 
##| \code{\link{seecol}} to show and use color palettes.  

# red <- pal_red[5]  # == red.5 of pal_red: "red5" OR "#EF4A60"

## Check:
# red

#   (e) Preferred color red (as HEX character value): ---- 

#' UNHCR color red. 
#' 
#' \code{red} provides the preferred color of \code{\link{pal_red}} 
#' (as an atomic HEX character value) and is defined as 
#' \code{\link{pal_red}[[5]]}. 
#'
#' See \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples
#' red  # HEX character "#EF4A60" (as value)
#' all.equal(red, pal_red[[5]])  # TRUE (same HEX values)
#' 
#' seecol(red)  # view color and details
#' 
#' @family preferred colors 
#'
#' @seealso
#' \code{\link{pal_red}} for the corresponding color palette; 
#' \code{\link{pal_unhcr}} for the UNHCR default color palette with all 5 colors of \code{\link{pal_blue}};
#' \code{\link{pal_unhcr_pref}} for a UNHCR color palette with all preferred colors; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes. 
#'
#' @export

red <- pal_red[[5]]  # HEX color value of red.5 of pal_red 

names(red) <- "Red"

## Check:
# red  #  "#EF4A60"



# (C) Other combinations of UNHCR color palettes: -------- 

#  (1) pal_unhcr_pref: Scale of all 8 preferred colors: ------


#   (+) Original definition: ---- 

pal_unhcr_pref <- data.frame( # Element: 
  "Blue"     = blue,          # pal_blue[[5]],     #  1. blue
  "Black"    = black,         # pal_grey[[6]],     #  2. black
  "White"    = white,         # pal_unhcr[[6]],    #  3. white 
  "Yellow"   = yellow,        # pal_yellow[[5]],   #  4. yellow 
  "Darkblue" = darkblue,      # pal_darkblue[[6]], #  5. darkblue 
  "Green"    = green,         # pal_green[[5]],    #  6. green
  "Red"      = red,           # pal_red[[5]],      #  7. red 
  "Grey"     = grey,          # grey[[4]],         #  8. grey
  stringsAsFactors = FALSE)

#   (a) Documentation: ----  

#' UNHCR preferred colors in a color palette.
#'
#' \code{pal_unhcr_pref} provides an additional UNHCR color palette  
#' that collects the preferred color of each palette (including primary and data visualization colors)
#' as a data frame containing 8 colors.
#'
#' See \url{https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html} and
#' \url{https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html} for details.
#'
#' @examples
#' pal_unhcr_pref
#' dim(pal_unhcr_pref)  # 1 8
#' 
#' # Access by position:
#' pal_unhcr_pref[1]    # color blue (as df)
#' pal_unhcr_pref[[1]]  # color value "#0072BC" 
#' 
#' # Access by name: 
#' pal_unhcr_pref["blue"]   # color "blue5" (as df) 
#' pal_unhcr_pref[["blue"]] # color value "#0072BC" 
#' 
#' # Plotting palette:
#' seecol(pal_unhcr_pref)
#' 
#' @family color palettes
#'
#' @seealso
#' \code{\link{pal_unhcr}} for the default UNHCR color palette; 
#' \code{\link{seecol}} to show color palettes;
#' \code{\link{usecol}} to use color palettes.   
#'
#' @export


## Check:
# pal_unhcr_pref
# seecol(pal_unhcr_pref)



## Lookup list of palettes: ----------

## Definition: -------
# all_pal_names1 <- ls()[grepl("pal_", ls())]  # utils::apropos("pal_")
# all_pal_names1 <- all_pal_names1[!all_pal_names1 %in% c("pal_signal", "pal_unikn_ppt")]  
all_palun_viz <- c("pal_blue", "pal_grey", "pal_darkblue", "pal_green", "pal_red", "pal_yellow")
all_palun <- c("pal_unhcr", all_palun_viz, "pal_unhcr_pref")


## ToDo: ------

# (+) Additional elements:
#   - color pairing
#   - continuous color palette
#   - ggplot_addon: provide complete ggplot theme(s)
#   - fonts?



## Color sources: ------ 

# Sources for color definitions: 
# https://media.unhcr.org/archive/Brand-Book-for-external-partners-2CZ7A2P0CGAY.html
# https://media.unhcr.org/archive/Data-visualisation-colour-palette-2CZ7A2HOVFP9.html


## eof. ----------