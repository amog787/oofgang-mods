.class Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment$1;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "ToggleColorInversionPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleColorInversionPreferenceFragment;)V

    return-void
.end method
