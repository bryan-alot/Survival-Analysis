library(survival)
library(survminer)

# defaults = 1, censored = 0, male = 1, female = 2

# Survival data for male applicants
time1 <- c(3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6,	6, 7, 7, 7, 7, 7, 8, 8, 8, 9, 9, 9, 9, 
           9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 11, 12, 12, 12, 13, 13, 13, 14, 15,
           15, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17, 17, 18, 18, 18, 19, 19, 
           19, 19, 20, 20, 21, 21, 21, 22, 22, 22, 22, 22, 22, 23, 23, 24, 24, 24,
           24, 25, 26, 26, 27, 27, 27, 28, 28, 28, 29, 29, 30, 30, 30, 31, 31, 32,
           33, 33, 35, 35
)
event1 <- c(1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1,	1, 0, 1, 1, 1,
            1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0,	1, 1, 1, 1, 0, 
            1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0,	1, 0, 0, 1, 1,
            1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1,
            0, 0, 1, 0, 0, 0, 0, 0
)
group1 <- rep(1, length(time1))
summary(time1)
my_df1 <- data.frame(time = time1, event = event1, group = group1)
print(my_df1)

surv_obj1 <- Surv(time1, event1)
print(surv_obj1)
summary(surv_obj1, confint = TRUE)

# Fit a Kaplan Meier Curve
surv_fit1 <- survfit(surv_obj1 ~ 1, data = my_df1)
print(surv_fit1)
summary(surv_fit1)

# Plot the Kaplan Meier curve
ggsurvplot(surv_fit1, data = my_df1,
           title = "Kaplan-Meier Curve for Male Applicants", xlab = "Time in Months", 
           ylab = "Survival Probability", palette = c("blue"), lty = 1, lwd = 1, conf.int = TRUE,
           legend.title = "Male", risk.table = TRUE, surv.median.line = "hv")

# Plot the cumulative survival curves
ggsurvplot(surv_fit1, data = my_df1, fun = "cumhaz",
           xlab = "Time in Months", ylab = "Cumulative Survival Probability",
           title = "Cumulative Survival Curve for Male Applicants", risk.table = TRUE,
           legend.title = "Male", lty = 1, lwd = 1, conf.int = TRUE, palette = c("blue"),
           xlim = c(0, 36))


# Survival data for female applicants
time2 <- c(2, 4, 4, 5, 5, 6, 7, 7, 7, 8, 8,	8, 8, 10, 10, 10, 10,	10, 10, 11, 11,
           11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 14, 14, 15, 15, 15,
           15, 15, 16, 16, 17, 17, 17, 17, 17, 17, 18, 18, 19, 19, 19, 19, 19, 20,
           20, 21, 21, 22, 22, 22, 22, 23, 23, 23, 23, 24, 24, 24, 24, 25, 26, 26,
           27, 27, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 30, 30, 31, 31, 31, 32,
           33, 33, 33, 33, 34, 34, 35
)
event2 <- c(1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1,	1, 1, 0, 0, 1,
            0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 
            1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1,
            0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0,
            1, 1, 0, 0, 0, 1, 0, 0
)
group2 <- rep(2, length(time2))

my_df2 <- data.frame(time = time2, event = event2, group = group2)
summary(my_df2)

surv_obj2 <- Surv(time2, event2)
print(surv_obj2)
summary(surv_obj2, confint = TRUE)

# Fit a Kaplan Meier Curve
surv_fit2 <- survfit(surv_obj2 ~ 1, data = my_df2)
summary(surv_fit2)

# Plot the Kaplan Meier curve
ggsurvplot(surv_fit2, data = my_df2,
           title = "Kaplan-Meier Curve for Female Applicants", xlab = "Time in Months", 
           ylab = "Survival Probability", palette = c("red"), lty = 1, lwd = 1, conf.int = TRUE, 
           legend.title = "Female", risk.table = TRUE, surv.median.line = "hv")

# Plot the cumulative survival curves
ggsurvplot(surv_fit2, data = my_df2, fun = "cumhaz",
           xlab = "Time in Months", ylab = "Cumulative Survival Probability",
           title = "Cumulative Survival Curve for Female Applicants", risk.table = TRUE,
           legend.title = "Female", lty = 1, lwd = 1, conf.int = TRUE, palette = c("red"), 
           xlim = c(0, 36))

# Combined both data frames
surv_data1 <- rbind(my_df1, my_df2)
print(surv_data1)
summary(surv_data1)

# Perform the log-rank test
logrank_test <- survdiff(formula = Surv(time, event) ~ group, data = surv_data1)

# Print the log-rank test results
print(logrank_test) # If the p value is greater than 0.05, the null hypothesis is retained

fit <- survfit(Surv(time, event) ~ group, data = surv_data1)
print(fit, std.err = TRUE)
summary(fit)

# Plot the cumulative survival curves for both groups
ggsurvplot(fit, data = surv_data1,
           xlab = "Time in Months", ylab = "Survival Probability",
           title = "Kaplan-Meier Survival Curve for  Both Groups", risk.table = TRUE,
           lty = 1, lwd = 1, conf.int = TRUE, palette = c("blue", "red"), 
           xlim = c(0, 36), ggtheme = theme_bw(), surv.median.line = "hv", pval = TRUE)


# Plot the cumulative survival curves for both groups
ggsurvplot(fit, data = surv_data1, fun = "cumhaz",
           xlab = "Time in Months", ylab = "Cumulative Survival Probability",
           title = "Cumulative Survival Curve for  Both Groups", risk.table = TRUE,
           lty = 1, lwd = 1, conf.int = TRUE, palette = c("blue", "red"), 
           xlim = c(0, 36), ggtheme = theme_bw(), pval = TRUE)
