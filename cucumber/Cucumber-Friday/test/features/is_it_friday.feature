Feature: Is it Friday yet?

    Everyone wants to know when it's Friday

    # Scenario: Monday isn't Friday
    #     Given today is Monday
    #     When I ask whether it's Friday yet
    #     Then I should be told "Nope"

    # Scenario: Friday is Friday
    #     Given today is Friday
    #     When I ask whether it's Friday yet
    #     Then I should be told "TGIF"

    Scenario Outline: Today is or is not Friday
        Given today is "<day>"
        When I ask whether it's Friday yet
        Then I should be told "<answer>"

        Examples:
            | day           | answer |
            | Friday        | TGIF   |
            | Mondy         | Nope   |
            | Tuesday       | Nope   |
            | anything else | Nope   |