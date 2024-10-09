<?php

namespace App\View\Components\Post;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Link extends Component
{
    public $post;
    /**
     * Create a new component instance.
     */
    public function __construct()
    {
        // $this->post = $post;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.post.all');
        // return <<<'blade'
        // <div>
        //     <!-- It is quality rather than quantity that matters. - Lucius Annaeus Seneca -->
        // </div>
        // blade;
    }
}
