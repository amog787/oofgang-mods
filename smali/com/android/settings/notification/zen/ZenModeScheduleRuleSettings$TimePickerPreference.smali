.class Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;
.super Landroidx/preference/Preference;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;,
        Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHourOfDay:I

.field private mMinute:I

.field private mSummaryFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 259
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 260
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 261
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$1;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$1;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 0

    .line 249
    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 0

    .line 249
    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    return p0
.end method

.method private updateSummary()V
    .locals 5

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 291
    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 292
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    return-void
.end method

.method public setSummaryFormat(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    .line 278
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->updateSummary()V

    return-void
.end method

.method public setTime(II)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iput p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    .line 284
    iput p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    .line 285
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->updateSummary()V

    return-void
.end method
