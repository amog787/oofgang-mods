.class Lcom/android/settings/display/ColorModePreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ColorModePreferenceFragment;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ColorModePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ColorModePreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment$1;->this$0:Lcom/android/settings/display/ColorModePreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment$1;->this$0:Lcom/android/settings/display/ColorModePreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->areAccessibilityTransformsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment$1;->this$0:Lcom/android/settings/display/ColorModePreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
