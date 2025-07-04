## General guidelines

### Do

  * Only use one type of app layout in a product. 
  * Use this app layout for productive use cases that require high levels of user interaction and focus. For more help choosing the application layout that best supports your use case, follow the guidelines for [layout]({get_link_resource: /foundation/visual-foundation/layout/}).
  * Arrange your content in a coherent hierarchy and follow the grid and column layout rules. 



### Don't

  * When you’re adding or removing flashbars, don't actively change the content scrolling position.
  * Don’t nest app layouts.
  * Never display an empty toolbar, or one with just side navigation and tools.



## Features

  * #### Navigation

Use the navigation panel region for the [side navigation]({get_link_resource: /components/side-navigation/}). The panel can be open, closed, or hidden.

    * When opened, a user can close the panel with the angle-left icon button in the upper-right corner.

    * When closed, a user can open the panel with the trigger with menu icon.

The default state (open or closed) depends on the main content type and the initial viewport size.

    * The side navigation is closed by default on the homepage (for first time users), [forms]({get_link_resource: /components/form/}), and [wizards]({get_link_resource: /components/wizard/}).

    * In all other pages the side navigation is open by default on desktop viewports.

    * The side navigation is always closed by default for mobile viewports.

  * #### Content

The content area is the main content of the page, where users focus their attention the most. For most pages, it has a fixed max-width. For some content-heavy patterns, including [full-page table]({get_link_resource: /patterns/resource-management/view/table-view/}) and [cards]({get_link_resource: /patterns/resource-management/view/card-view/}), or unique use-cases such as a canvas layout or a full-page task board, the content area should take up 100% of the available space. 

The predefined content types are:

    * Dashboard - any page using a multi-column [dashboard]({get_link_resource: /patterns/general/service-dashboard/}) pattern.

    * Form - any page using a [form]({get_link_resource: /components/form/}) component, such as [single-page create]({get_link_resource: /patterns/resource-management/create/single-page-create/}) and [edit]({get_link_resource: /patterns/resource-management/edit/}) patterns.

    * Table or Cards - any page using the [full-page table]({get_link_resource: /patterns/resource-management/view/table-view/}) or [full-page cards]({get_link_resource: /patterns/resource-management/view/card-view/}) pattern.

    * Wizard - any page using a [wizard]({get_link_resource: /components/wizard/}) component or [multi-page create]({get_link_resource: /patterns/resource-management/create/multi-page-create/}) pattern.

    * Default - any page that doesn’t fall into one of the above categories, such as [dashboards]({get_link_resource: /patterns/general/service-dashboard/}), [resource details]({get_link_resource: /patterns/resource-management/details/}), and other custom layouts. These pages are typically constructed using a [page header]({get_link_resource: /components/header/?tabId=playground&example=page-header}) and a content-level [grid]({get_link_resource: /components/grid/}) component that wraps all page elements.

The type of content determines the default state of the navigation panel, as well as max content width for some pages including table, cards, and dashboard.

  * #### Notifications

The notifications area is a dedicated section at the top of a page that displays notifications such as [flashbars]({get_link_resource: /components/flashbar/}). This area can be sticky or non-sticky. When sticky, all notifications stay at the top of the page, no matter the user's scrolling position. 

    * For mobile viewports, the sticky feature is off.

    * Follow the guidelines for [sticky flashbar]({get_link_resource: /components/flashbar/?example=info&tabId=usage}).

Use the high-contrast `headerVariant` to apply a dark visual context to the header. The component displays a dark header background and adjusts the color of elements inside to meet color contrast.

  * #### Breadcrumbs

The breadcrumbs area is a dedicated section in the toolbar that displays [breadcrumbs]({get_link_resource: /components/breadcrumb-group/}). It’s important that this area doesn’t go unused, in order to help promote an efficient use of space. 

  * #### Tools

Use the tools region to implement the [help panel]({get_link_resource: /components/help-panel/}) and the [tutorial panel]({get_link_resource: /components/tutorial-panel/}). Panels can be open, closed, or hidden. Set the help panel as closed by default, except if a tutorial panel is implemented.

    * When opened, a user can close the panels with the angle-right icon button in the upper-right corner. The panel can also be closed with the trigger with status-info icon.

    * When closed, a user can open the panels with the trigger with status-info icon. The help panel can also be opened with an [info link]({get_link_resource: /components/link/?example=info-link}) in the content area.

  * #### Drawers

Use drawers to implement panels for supplementary task completion or feature access. Drawers can be open or closed by default on desktop viewports depending on your use-case. Drawers should be closed on mobile viewports by default. Follow the guidelines for [secondary panels]({get_link_resource: /patterns/general/secondary-panels/}).  
  
Each drawer is represented by an icon hosted in the trigger bar on the upper right-hand side of the AppLayout.

    * When opened, a user can close the drawer with the close button in the upper-right corner, or by clicking on the icon in the trigger bar. 

    * When closed, a user can open each drawer with its corresponding trigger button.

    * Use the optional trigger badge to indicate a state change on the drawer, such as signifying new messages or updated content. A visual indicator will be displayed on the drawer icon.

    * When possible, use a commonly-identified icon for custom drawers. For example, a contact icon for chat, or notification icon for notifications. Follow the guidelines for [iconography]({get_link_resource: /foundation/visual-foundation/iconography/}).

  * #### Split panel

Use the `splitPanel` region to implement the [split panel]({get_link_resource: /components/split-panel/}) on a [split view]({get_link_resource: /patterns/resource-management/view/split-view/}). The split panel can be open, closed, or hidden. Set the split panel as closed by default.  
There are two possible positions: 

    * **Split panel in side position**

      * Users can close the side panel with the angle-right icon button in the upper-right corner. Additionally, the side panel can also be closed using the trigger with view-vertical icon.

      * Users can open the side panel with the trigger with view-vertical icon.

    * **Split panel in bottom position**

      * Users can close the bottom panel with the angle-down icon button in the upper-right corner.

      * Users can open the bottom panel with the angle-up icon button.

When users make a selection within the resource collection, make sure the split panel is open. Follow the guidelines for [split view]({get_link_resource: /patterns/resource-management/view/split-view/}).   





## Writing guidelines

### General writing guidelines

  * Use sentence case, but continue to capitalize proper nouns and brand names correctly in context.

  * Use end punctuation, except in [headers]({get_link_resource: /components/header/?tabId=usage}) and [buttons]({get_link_resource: /components/button/?tabId=usage}). Don’t use exclamation points.

  * Use present-tense verbs and active voice.

  * Don't use _please_ , _thank you_ , ellipsis (_..._), ampersand (_&_), _e.g._ , _i.e._ , or _etc._ in writing.

  * Avoid directional language.

    * For example: use _previous_ not _above_ , use _following_ not _below_.

  * Use device-independent language.

    * For example: use _choose_ or _select_ not _click_.




### Component-specific guidelines

  * Follow the writing guidelines for [side navigation]({get_link_resource: /components/side-navigation/?tabId=usage#writing-guidelines}), [help panel]({get_link_resource: /components/help-panel/?tabId=usage#writing-guidelines}), [split panel]({get_link_resource: /components/split-panel/?tabId=usage#writing-guidelines}) and [drawer]({get_link_resource: /components/drawer/?tabId=usage#writing-guidelines}).




## Accessibility guidelines

### General accessibility guidelines

  * Follow the guidelines on alternative text and Accessible Rich Internet Applications (ARIA) regions for each component.

  * Make sure to define ARIA labels aligned with the language context of your application.

  * Don't add unnecessary markup for roles and landmarks. Follow the guidelines for each component.

  * Provide keyboard functionality to all available content in a logical and predictable order. The flow of information should make sense.




### Component-specific guidelines

#### Alternative text

  * Set the drawer button labels using the `ariaLabels` property on drawers. Use recognizable names as these are used on the trigger button tooltip text as well as in the overflow dropdown.



  * Set the side nav and tools button labels using the `labels` app layout property corresponding to the language context.

  * Provide alternative text for the help panel icon and info links that trigger the help panel.

    * For example: _Open help_

  * Provide alternative text for the X close icon and external icons according to the alternative text guidelines.

    * For example: _Close help_




#### ARIA live regions

  * The notifications region does not come with an `aria-live` region because it might contain flash messages of varying severities. Refer to the [alerts and flashbars focus management guidelines]({get_link_resource: /foundation/core-principles/accessibility/focus-management-principles/#alerts-and-flashbars}) for more information on how to announce these updates.



