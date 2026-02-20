![Screenshot_20260220_162128](https://github.com/user-attachments/assets/b4cabd25-15dd-483e-91a6-1b14dc5dab18)# Flutter Common Widgets Demo

A practical Flutter demo project that contains reusable custom widgets and dedicated demo screens to learn how commonly used UI components are built and used.

## What This Project Includes

- Reusable custom widgets inside `lib/widgets/`
- Organized demo screens inside `lib/screens/`
- Home dashboard to navigate all demos
- Real usage examples added as comments in each custom widget file

## Widget Coverage

This project includes custom versions of common widgets:

1. `CustomTextView`
2. `CustomButton`
3. `CustomCardView`
4. `CustomTextField`
5. `CustomChip`
6. `CustomAvatar`
7. `CustomLoader`
8. `CustomAppBar`
9. `CustomBottomNavigationBar`
10. `CustomDrawer`
11. `CustomTabBar`
12. `CustomDropdown`
13. `CustomCheckbox`
14. `CustomRadioGroup`
15. `CustomSwitchTile`
16. `CustomDatePickerField`
17. `CustomTimePickerField`
18. `CustomSearchBar`
19. `CustomStepper`
20. `CustomDialog`
21. `CustomBottomSheet`
22. `CustomSnackbar`
23. `CustomBadge`
24. `CustomDivider`
25. `CustomEmptyState`
26. `CustomErrorState`
27. `CustomShimmerLoader`
28. `CustomImageView`
29. `CustomCarouselBanner`
30. `CustomExpansionTile`
31. `CustomGridItemCard`
32. `CustomPaginationLoader`
33. `CustomFormSection`
34. `CustomInfoTile`
35. `CustomTimelineItem`
36. `CustomOTPField`
37. `CustomRatingBar`

## Demo Screens

Main demo screens are available in `lib/screens/`:

- `home_screen.dart`
- `text_and_input_demo_screen.dart`
- `buttons_and_cards_demo_screen.dart`
- `listview_demo_screen.dart`
- `misc_widgets_demo_screen.dart`
- `navigation_widgets_demo_screen.dart`
- `selection_widgets_demo_screen.dart`
- `input_and_feedback_demo_screen.dart`
- `content_and_layout_demo_screen.dart`
- `state_widgets_demo_screen.dart`

## Project Structure

```text
lib/
  main.dart
  screens/
    screens.dart
    ...demo screens
  widgets/
    widgets.dart
    ...custom widgets
test/
  widget_test.dart
```

## Run Locally

```bash
flutter pub get
flutter run
```

## Quality Checks

```bash
flutter analyze
flutter test
```

## Notes

- `ListView` is demonstrated in a dedicated screen (not inside the widget package).
- Every custom widget file contains a usage example comment with common properties.
- This project is focused on understanding reusable patterns and speeding up Flutter UI development.
