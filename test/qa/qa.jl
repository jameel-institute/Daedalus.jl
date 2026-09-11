using SciMLTesting, Daedalus, Test
using JET

run_qa(
    Daedalus;
    ei_kwargs = (;
        all_qualified_accesses_are_public = (;
            # `CSV.read` is the documented CSV entry point, but `read` is owned by
            # Base and not declared public in CSV.
            ignore = (:read,),
        ),
    ),
)
