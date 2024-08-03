#include <saucer/smartview.hpp>
#include "www/all.hpp"

int main()
{
    saucer::smartview smartview;         // Instantiate smartview
    smartview.set_title("Countdown Timer"); // Set the window title to "Hello World!"

    // Expose a synchronous native function "add_ten" using the default serializer
    // smartview.expose("add_ten", [](int i)
    //                             {
    //                                 return i + 10;
    //                             });

    smartview.embed(saucer::embedded::all());
    smartview.serve("index.html");

    smartview.show();                        // Show the smartview
    smartview.run();                         // And finally enter the run-loop.

    return 0;
}