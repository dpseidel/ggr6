% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/renderer.R
\name{Renderer}
\alias{Renderer}
\alias{RendererIdentity}
\title{Render and assemble a Graphic}
\description{
The role of the renderer isn't solidified in ggr6. Currently it's an
abstraction of various graphics backend that allow ggr6 to focus on the
grammar (rather than on rendering graphical objects). Currently it has
methods for rendering graphical primitives, methods for finding
the aesthetics that are supported by each primitive, methods for
constructing default scales for each aesthetic, and methods for
assembling panels.
}
\details{
Realistically, each renderer needs its own collection
of \link{Geom}, \link{Facet}, \link{Coord}, and \link{Scale} subclasses.
The role of ggr6 is to provide robust superclasses for these such
that the subclasses can focus on rendering. This package provides
\code{RendererIdentity} for testing and \link{RendererGraphics}, which uses the
base \link[graphics:graphics-package]{graphics} package to render graphics.
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-render_points}{\code{Renderer$render_points()}}
\item \href{#method-render_path}{\code{Renderer$render_path()}}
\item \href{#method-render_polygon}{\code{Renderer$render_polygon()}}
\item \href{#method-render_text}{\code{Renderer$render_text()}}
\item \href{#method-render_null}{\code{Renderer$render_null()}}
\item \href{#method-render_stack}{\code{Renderer$render_stack()}}
\item \href{#method-render_panel}{\code{Renderer$render_panel()}}
\item \href{#method-render_panels}{\code{Renderer$render_panels()}}
\item \href{#method-default_scale}{\code{Renderer$default_scale()}}
\item \href{#method-aesthetics}{\code{Renderer$aesthetics()}}
\item \href{#method-default_aesthetics}{\code{Renderer$default_aesthetics()}}
\item \href{#method-clone}{\code{Renderer$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_points"></a>}}
\subsection{Method \code{render_points()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$render_points(x, y, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_path"></a>}}
\subsection{Method \code{render_path()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$render_path(x, y, group, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_polygon"></a>}}
\subsection{Method \code{render_polygon()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$render_polygon(x, y, group, subgroup, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_text"></a>}}
\subsection{Method \code{render_text()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$render_text(x, y, label, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_null"></a>}}
\subsection{Method \code{render_null()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$render_null()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_stack"></a>}}
\subsection{Method \code{render_stack()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$render_stack(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_panel"></a>}}
\subsection{Method \code{render_panel()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$render_panel(panel, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_panels"></a>}}
\subsection{Method \code{render_panels()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$render_panels(graphic, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-default_scale"></a>}}
\subsection{Method \code{default_scale()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$default_scale(x, aesthetic)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-aesthetics"></a>}}
\subsection{Method \code{aesthetics()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$aesthetics(geom_type)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-default_aesthetics"></a>}}
\subsection{Method \code{default_aesthetics()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$default_aesthetics(geom_type)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Renderer$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
\section{Super class}{
\code{\link[ggr6:Renderer]{ggr6::Renderer}} -> \code{RendererIdentity}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-render_points}{\code{RendererIdentity$render_points()}}
\item \href{#method-render_path}{\code{RendererIdentity$render_path()}}
\item \href{#method-render_polygon}{\code{RendererIdentity$render_polygon()}}
\item \href{#method-render_text}{\code{RendererIdentity$render_text()}}
\item \href{#method-render_null}{\code{RendererIdentity$render_null()}}
\item \href{#method-render_stack}{\code{RendererIdentity$render_stack()}}
\item \href{#method-render_panel}{\code{RendererIdentity$render_panel()}}
\item \href{#method-render_panels}{\code{RendererIdentity$render_panels()}}
\item \href{#method-default_scale}{\code{RendererIdentity$default_scale()}}
\item \href{#method-clone}{\code{RendererIdentity$clone()}}
}
}
\if{html}{
\out{<details open ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="ggr6" data-topic="Renderer" data-id="aesthetics">}\href{../../ggr6/html/Renderer.html#method-aesthetics}{\code{ggr6::Renderer$aesthetics()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="ggr6" data-topic="Renderer" data-id="default_aesthetics">}\href{../../ggr6/html/Renderer.html#method-default_aesthetics}{\code{ggr6::Renderer$default_aesthetics()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_points"></a>}}
\subsection{Method \code{render_points()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$render_points(x, y, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_path"></a>}}
\subsection{Method \code{render_path()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$render_path(x, y, group, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_polygon"></a>}}
\subsection{Method \code{render_polygon()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$render_polygon(x, y, group, subgroup, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_text"></a>}}
\subsection{Method \code{render_text()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$render_text(x, y, label, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_null"></a>}}
\subsection{Method \code{render_null()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$render_null()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_stack"></a>}}
\subsection{Method \code{render_stack()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$render_stack(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_panel"></a>}}
\subsection{Method \code{render_panel()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$render_panel(panel, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_panels"></a>}}
\subsection{Method \code{render_panels()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$render_panels(graphic, ...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-default_scale"></a>}}
\subsection{Method \code{default_scale()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$default_scale(x, aesthetic)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{RendererIdentity$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
