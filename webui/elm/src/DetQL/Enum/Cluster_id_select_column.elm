-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module DetQL.Enum.Cluster_id_select_column exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| select columns of table "cluster\_id"

  - Cluster\_id - column name

-}
type Cluster_id_select_column
    = Cluster_id


list : List Cluster_id_select_column
list =
    [ Cluster_id ]


decoder : Decoder Cluster_id_select_column
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "cluster_id" ->
                        Decode.succeed Cluster_id

                    _ ->
                        Decode.fail ("Invalid Cluster_id_select_column type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Cluster_id_select_column -> String
toString enum =
    case enum of
        Cluster_id ->
            "cluster_id"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Cluster_id_select_column
fromString enumString =
    case enumString of
        "cluster_id" ->
            Just Cluster_id

        _ ->
            Nothing
