## General guidelines

### Do

  * Make sure to configure the grid so that the content is readable in viewport widths down to 320px.



## Features

The grid component provides a fluid 12-column grid system similar to [Bootstrap’s grid ](https://getbootstrap.com/docs/4.5/layout/grid/). Use it to create layouts where elements can span across 12 columns that represent 100% of the available horizontal space.

The available horizontal space is determined by the size of the grid itself rather than the size of the viewport. In other words, column sizes and elements that span across them will respond to the grid’s container size and breakpoints, allowing for more precise responsiveness.

  * #### Colspan

Colspan is the number of columns (out of 12) that a grid element should span. These are set in percentages, so they are always fluid and are sized relative to the width of their parent element, irrespective of the viewport's width.

    * To create more complex layouts such as the [dashboard]({get_link_resource: /examples/react/dashboard.html}), you can create a nested grid or combine the grid with [column layout]({get_link_resource: /components/column-layout/}). To adjust your colspans based on the space available, use the breakpoints feature.

  * #### Columns

Columns divide the grid into vertical sections, allowing for horizontal distribution of content on a page. You can define equally-sized columns for 2, 3, 4, 6, and 12 column layouts. To do this, apply `colspan = [12 / (the number of elements to distribute)]` to each element.

For example: If you want two equally sized columns, apply a colspan of six to both elements. Similarily, if you want three equally sized columns, apply a colspan of four to each of the three elements, and so on.

**Note:** If you want a layout of up to four equal-sized columns, we recommend using the [column layout]({get_link_resource: /components/column-layout/}) component for out-of-the-box breakpoint responsiveness.

  * #### Rows

Rows divide the grid into horizontal sections, allowing for vertical distribution of content on a page. Due to the fluid nature of the grid, rows aren’t explicitly defined. However, one row equals 12 columns. After the columns reach or exceed the threshold of 12, the next element wraps to create a new row. 

For example, you have an equally sized two-column grid, containing elements A and B, and each element has a colspan of six. If you increased B's colspan to seven, Element B would be pushed below Element A because the combination of their colspans exceeds the threshold of 12.__ The colspan of Element A would remain unchanged and would occupy only half of the grid's available horizontal space, while Element B would now be larger than Element A.

  * #### Breakpoints \- optional

Breakpoints allow you to create responsive layouts that change based on the amount of horizontal space available. The grid uses six [predefined breakpoints ](https://github.com/cloudscape-design/components/blob/main/src/internal/breakpoints.ts): `xxs`, `xs`, `s`, `m`, `l`, `xl,` and one lower bound referred to as `default`. Each represents a value in pixels and is applied based on minimum width element queries, which means:

    1. When a grid needs to choose which breakpoint to apply to its elements, it picks the breakpoint based on its own width, as opposed to the viewport width. 

    2. Each breakpoint applies to its own size and all those above it, or until another breakpoint is defined. For example, the `m` breakpoint applies to `m`, `l`, and xl breakpoints, but none below the `m` breakpoint.

The `default` breakpoint represents the lower bound and is always equal to zero. It will apply to all sizes unless another breakpoint is defined. If you only define the default breakpoint `{ colspan: default: 3 },` it will have the same results if you didn't set any breakpoints `{ colspan: 3 }`. When defining breakpoints, we recommend you always also provide a `default` value to prevent your layout from breaking on smaller screens.

Breakpoints can be configured for some, none, or all elements in your grid: for colspans, modifiers, or both. To do this, specify different colspans at breakpoints of your choice.

For example, setting colspan on an element to `{ default: 6, m: 4, l: 3 }` will give:

    * 50% when the width of the grid is less than the `m` breakpoint.

    * 33% when the width of the grid is between the `m` and `l` breakpoints.

    * 25% when the width of the grid greater than the `l` breakpoint.

  * #### Gutters \- optional

Gutter is the space between columns and rows. The grid component has gutters built into it to provide equal spacing between elements. Gutters have a fixed width and can be optionally disabled. 

  * #### Modifiers \- optional

Modifiers are properties that can be applied to grid elements to create more advanced layouts. They can be configured for some, none, or all elements in your grid. They can also be configured for some, none, or all breakpoints and colspans. 

    * **Offset** : Adds an offset to the left of the column.

    * **Pull/push** : Moves the content by pushing it (move right) or pulling it (move left).




## Accessibility guidelines

### General accessibility guidelines

  * Follow the guidelines on alternative text and Accessible Rich Internet Applications (ARIA) regions for each component.

  * Make sure to define ARIA labels aligned with the language context of your application.

  * Don't add unnecessary markup for roles and landmarks. Follow the guidelines for each component.

  * Provide keyboard functionality to all available content in a logical and predictable order. The flow of information should make sense.




### Component-specific guidelines

#### Grid

  * Avoid using push/pull properties to reorder columns. 

    * Re-ordering columns creates a disconnect between the visual presentation of content and DOM order. This adversely affects users experiencing low vision navigating with the aid of assistive technology, such as a screen reader. If the visual (CSS) order is important, then screen reader users will not have access to the correct reading order.



