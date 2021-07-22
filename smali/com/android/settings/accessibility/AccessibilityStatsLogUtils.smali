.class public final Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;
.super Ljava/lang/Object;
.source "AccessibilityStatsLogUtils.java"


# direct methods
.method private static convertToLoggingServiceEnabled(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method static logAccessibilityServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->convertToLoggingServiceEnabled(Z)I

    move-result p1

    const/16 v0, 0x10b

    .line 36
    invoke-static {v0, p0, p1}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(ILjava/lang/String;I)V

    return-void
.end method
