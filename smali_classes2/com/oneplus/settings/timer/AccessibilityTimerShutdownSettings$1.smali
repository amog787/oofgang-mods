.class Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;
.super Ljava/lang/Object;
.source "AccessibilityTimerShutdownSettings.java"

# interfaces
.implements Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/google/android/material/picker/TimePicker;II)V
    .locals 7

    .line 118
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 119
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 120
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 121
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 122
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 123
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.REQUEST_POWER_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$102(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/content/Intent;)Landroid/content/Intent;

    .line 126
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    .line 127
    invoke-static {v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$100(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/content/Intent;

    move-result-object v2

    .line 126
    invoke-static {v0, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$202(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 128
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    const-string v0, "alarm"

    invoke-static {p1, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$400(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p1, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$302(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    .line 129
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$300(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    .line 130
    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$200(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 131
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$300(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    .line 132
    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$200(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;

    move-result-object v6

    const-wide/16 v4, 0x2710

    .line 131
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 133
    iget-object p0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->access$500(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroidx/preference/Preference;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8bbe\u7f6e\u7684\u95f9\u949f\u65f6\u95f4\u4e3a:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
