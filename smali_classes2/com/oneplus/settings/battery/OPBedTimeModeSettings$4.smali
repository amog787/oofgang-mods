.class Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;
.super Ljava/lang/Object;
.source "OPBedTimeModeSettings.java"

# interfaces
.implements Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;I)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    iput p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/google/android/material/picker/TimePicker;II)V
    .locals 3

    .line 200
    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p1

    .line 201
    iget p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->val$dialogId:I

    const/4 p3, 0x1

    const/4 v0, -0x2

    if-nez p2, :cond_1

    .line 203
    iget-object p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p2}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$500(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Ljava/time/LocalTime;

    move-result-object p2

    .line 204
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 205
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    iget-object p0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$600(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->timepower_time_duplicate:I

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p2}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$700(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroid/content/ContentResolver;

    move-result-object p2

    .line 210
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v1, p3

    const-string p3, "bedtime_mode_custom_start_time"

    .line 209
    invoke-static {p2, p3, v1, v2, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 211
    iget-object p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p2}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$100(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroidx/preference/Preference;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p0, p1}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$800(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p2}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$900(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Ljava/time/LocalTime;

    move-result-object p2

    .line 216
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 219
    iget-object p0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$1000(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->timepower_time_duplicate:I

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p2}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$1100(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroid/content/ContentResolver;

    move-result-object p2

    .line 222
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v1, p3

    const-string p3, "bedtime_mode_custom_end_time"

    .line 221
    invoke-static {p2, p3, v1, v2, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 223
    iget-object p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p2}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$200(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroidx/preference/Preference;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;->this$0:Lcom/oneplus/settings/battery/OPBedTimeModeSettings;

    invoke-static {p0, p1}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->access$800(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
