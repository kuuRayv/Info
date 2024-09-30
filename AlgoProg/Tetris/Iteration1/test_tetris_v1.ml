#use "AP1inter.ml" ;;


type t_point = {x : int ; y : int} ;;
type t_param = {size_x : int ; size_y : int ; dilat : int ; origin : t_point} ;;


let param : t_param = {size_x : int = 6 ; size_y : int = 12 ;
 dilat : int = 64 ; origin : t_point = {x = 65 ; y = 65}} ;;


(* dessine un carré avec bordure, de taille dilat, à partir
  des coordonées d'un point dans l'espace de travail et d'une couleur*)
let draw_point (p_param, p_point, p_color : t_param * t_point * t_color) : unit =
  set_color (p_color) ;
  fill_rect (p_point.x * p_param.dilat + p_param.origin.x, p_point.y * p_param.dilat
  + p_param.origin.y, p_param.dilat - 1, p_param.dilat - 1) ;
  set_color (black) ;
  draw_rect (p_point.x * p_param.dilat + p_param.origin.x, p_point.y * p_param.dilat
  + p_param.origin.y, p_param.dilat - 1, p_param.dilat - 1) ;;


(* dessine une bordure noire incomplète autour de l'espace de travail *)
let draw_frame (p_param) : unit =
  set_color (black) ;
  fill_rect (0, 0, (p_param.size_x + 2) * p_param.dilat + 1, p_param.dilat) ;
  fill_rect (0, 0, p_param.dilat, (p_param.size_y + 1) * p_param.dilat + 1) ;
  fill_rect ((p_param.size_x + 1) * p_param.dilat + 1, 0, p_param.dilat, (p_param.size_y + 1) * p_param.dilat + 1) ;;



open_graph ((param.size_x + 2) * param.dilat + 1, (param.size_y + 1) * param.dilat + 1) ;;

(* test de la fonction draw_frame *)
draw_frame (param) ;;
(* let test_param : t_param = {size_x : int = 9 ; size_y : int = 17 ;
 dilat : int = 32 ; origin : t_point = {x = 32 ; y = 32}} ;;
open_graph ((test_param.size_x + 2) * test_param.dilat, (test_param.size_y + 1) * test_param.dilat) ;;
draw_frame (test_param) ;; *)

(* test de la fonction draw_point *)
draw_point (param, {x = 0 ; y = 0}, red) ;;
draw_point (param, {x = 1 ; y = 0}, red) ;;
draw_point (param, {x = 0 ; y = 1}, red) ;;
draw_point (param, {x = 1 ; y = 1}, red) ;;
draw_point (param, {x = 3 ; y = 4}, blue) ;;
draw_point (param, {x = 3 ; y = 3}, blue) ;;
draw_point (param, {x = 4 ; y = 8}, blue) ;;
draw_point (param, {x = 5 ; y = 2}, green) ;;
draw_point (param, {x = 2 ; y = 3}, green) ;;
draw_point (param, {x = 5 ; y = 11}, green) ;;