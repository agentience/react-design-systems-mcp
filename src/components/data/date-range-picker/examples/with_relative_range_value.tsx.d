import * as React from "react";
import DateRangePicker from "@cloudscape-design/components/date-range-picker";
export default () => {
  const [value, setValue] = React.useState({
    type: "relative",
    amount: 12,
    unit: "day",
  });
  return (
    <DateRangePicker
      onChange={({ detail }) => setValue(detail.value)}
      value={value}
      relativeOptions={[
        {
          key: "previous-5-minutes",
          amount: 5,
          unit: "minute",
          type: "relative",
        },
        {
          key: "previous-30-minutes",
          amount: 30,
          unit: "minute",
          type: "relative",
        },
        { key: "previous-1-hour", amount: 1, unit: "hour", type: "relative" },
        { key: "previous-6-hours", amount: 6, unit: "hour", type: "relative" },
      ]}
      isValidRange={(range) => {
        if (range.type === "absolute") {
          const [startDateWithoutTime] = range.startDate.split("T");
          const [endDateWithoutTime] = range.endDate.split("T");
          if (!startDateWithoutTime || !endDateWithoutTime) {
            return {
              valid: false,
              errorMessage:
                "The selected date range is incomplete. Select a start and end date for the date range.",
            };
          }
          if (new Date(range.startDate) - new Date(range.endDate) > 0) {
            return {
              valid: false,
              errorMessage:
                "The selected date range is invalid. The start date must be before the end date.",
            };
          }
        }
        return { valid: true };
      }}
      i18nStrings={{}}
      placeholder="Filter by a date and time range"
    />
  );
};
