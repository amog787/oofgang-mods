.class Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

.field final synthetic val$mgr:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$1;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$1;->val$mgr:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 264
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    .line 265
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$1;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    iput-object v0, p1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 266
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$1;->val$mgr:Landroidx/fragment/app/FragmentManager;

    const-class v0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
