#use "AP1inter.ml" ;;


type t_point = {x : int ; y : int} ;;
type t_param = {size_x : int ; size_y : int ; dilat : int ; origin : t_point} ;;


let param : t_param = {size_x : int = 6 ; size_y : int = 12 ;
 dilat : int = 64 ; origin : t_point = {x = 64 ; y = 64}} ;;


(* dessine un carré avec bordure, de taille dilat, à partir des coordonées d'un point dans l'espace de travail et d'une couleur*)
let draw_point (p_param, p_point, p_color : t_param * t_point * t_color) : unit =
  set_color (p_color) ;
  fill_rect (p_point.x * p_param.dilat + p_param.origin.x, p_point.y * p_param.dilat
  + p_param.origin.y, p_param.dilat, p_param.dilat) ;
  set_color (black) ;
  draw_rect (p_point.x * p_param.dilat + p_param.origin.x + 1, p_point.y * p_param.dilat
  + p_param.origin.y + 1, p_param.dilat - 2, p_param.dilat - 2) ;
  set_color (white) ;
  draw_rect (p_point.x * p_param.dilat + p_param.origin.x, p_point.y * p_param.dilat
  + p_param.origin.y, p_param.dilat, p_param.dilat) ;;


(* dessine une bordure noire incomplète autour de l'espace de travail *)
let draw_frame (p_param) : unit =
  set_color (black) ;
  fill_rect (0, 0, (p_param.size_x + 2) * p_param.dilat, p_param.dilat) ;
  fill_rect (0, 0, p_param.dilat, (p_param.size_y + 1) * p_param.dilat) ;
  fill_rect ((p_param.size_x + 1) * p_param.dilat, 0, p_param.dilat, (p_param.size_y + 1) * p_param.dilat) ;;



open_graph ((param.size_x + 2) * param.dilat, (param.size_y + 1) * param.dilat) ;;

draw_frame (param) ;;

(* ligne de carrés rouges *)
draw_point (param, {x = 0 ; y = 0}, red) ;;
draw_point (param, {x = 1 ; y = 0}, red) ;;
draw_point (param, {x = 2 ; y = 0}, red) ;;
draw_point (param, {x = 3 ; y = 0}, red) ;;
draw_point (param, {x = 4 ; y = 0}, red) ;;
draw_point (param, {x = 5 ; y = 0}, red) ;;

(* ligne de carrés bleus *)
draw_point (param, {x = 0 ; y = 1}, blue) ;;
draw_point (param, {x = 0 ; y = 2}, blue) ;;
draw_point (param, {x = 0 ; y = 3}, blue) ;;
draw_point (param, {x = 0 ; y = 4}, blue) ;;
draw_point (param, {x = 0 ; y = 5}, blue) ;;
draw_point (param, {x = 0 ; y = 6}, blue) ;;
draw_point (param, {x = 0 ; y = 7}, blue) ;;
draw_point (param, {x = 0 ; y = 8}, blue) ;;
draw_point (param, {x = 0 ; y = 9}, blue) ;;
draw_point (param, {x = 0 ; y = 10}, blue) ;;
draw_point (param, {x = 0 ; y = 11}, blue) ;;

(* ligne de carrés bleus *)
draw_point (param, {x = 1 ; y = 1}, green) ;;
draw_point (param, {x = 2 ; y = 2}, green) ;;
draw_point (param, {x = 3 ; y = 3}, green) ;;
draw_point (param, {x = 4 ; y = 4}, green) ;;
draw_point (param, {x = 5 ; y = 5}, green) ;;