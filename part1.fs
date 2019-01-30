module Aproject

let rec aMap x list=
    match list with
    |[]->[]
    |h::t->x(h)::aMap x t
let alist=aMap(fun x->x*3)[1;2;3]
printfn "%A" alist 

let rec afilter x list=
    match list with
    |[]->[]
    |h::t when x(h)->h::afilter x t
    |_::t->afilter x t
let blist=afilter(fun x->x%2=0)[1;2;3]
printfn "%A" blist


[<EntryPoint>]
let main argv =
    printfn "%A" argv
    0 // return an integer exit code
