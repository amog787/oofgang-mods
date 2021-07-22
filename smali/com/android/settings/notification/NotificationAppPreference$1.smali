.class Lcom/android/settings/notification/NotificationAppPreference$1;
.super Ljava/lang/Object;
.source "NotificationAppPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAppPreference;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationAppPreference;->access$000(Lcom/android/settings/notification/NotificationAppPreference;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationAppPreference;->access$000(Lcom/android/settings/notification/NotificationAppPreference;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/common/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationAppPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v2, 0x3eb

    invoke-static {v0, v1, v2}, Lcom/oneplus/common/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/notification/NotificationAppPreference;->mVibratePattern:[J

    .line 107
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    iget-object v0, p1, Lcom/android/settings/notification/NotificationAppPreference;->mVibratePattern:[J

    iget-object p1, p1, Lcom/android/settings/notification/NotificationAppPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, p1}, Lcom/oneplus/common/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationAppPreference;->access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationAppPreference;->access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationAppPreference;->access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppPreference;->setChecked(Z)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAppPreference$1;->this$0:Lcom/android/settings/notification/NotificationAppPreference;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationAppPreference;->access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationAppPreference;->access$200(Lcom/android/settings/notification/NotificationAppPreference;Z)Z

    :goto_0
    return-void
.end method
