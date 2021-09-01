.class Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;
.super Ljava/lang/Object;
.source "DarkModeActivationPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->access$200(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->access$000(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;

    invoke-static {v1}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->access$100(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 139
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->access$300(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;

    invoke-static {v1}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->access$400(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;)Landroid/app/UiModeManager;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    .line 142
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;->access$500(Lcom/android/settings/display/darkmode/DarkModeActivationPreferenceController;Z)V

    return-void
.end method
