open Jest
open Expect

let () = 

describe "json.t" (fun () ->
  let open Aeson in                        

  test "is_numeric" (fun () ->
    expect (Js.Re.test "Aeson.Json.NumberString(9)" Json.is_numeric) |> toEqual true);

  test "capture_numeric_string" (fun () ->
    expect (Json.capture_numeric_string "Aeson.Json.NumberString(9)") |> toEqual (Some "9"));

  test "dict string" (fun () ->
    expect @@ (Json.stringify (Aeson.Json.parseExn {| { "a": "x", "b": "y" } |}))
      |> toEqual "{\"a\":\"x\",\"b\":\"y\"}"  );
  
(*
  test "is_numeric" (fun () ->
    expect (Js.Re.test "9.0" Json.is_numeric) |> toEqual true);


  test "is_numeric" (fun () ->
    expect (Js.Re.test "a" Json.is_numeric) |> toEqual false);

  
  test "string" (fun () ->
    expect (Json.stringify (Json.string "foo")) |> toEqual "\"foo\"");


  test "int64" (fun () -> 
    expect (Json.stringify (Json.string "9")) |> toEqual "9")

  test "dict string" (fun () ->
    expect @@
      dict string (Js.Json.parseExn {| { "a": "x", "b": "y" } |})
      |> toEqual (Obj.magic [%obj { a = "x"; b = "y" }]));
*)

(*  test "int64" (fun () -> 
    expect (Json.stringify (Json.string "9223372036854775807")) |> toEqual "9223372036854775807") *)
);
