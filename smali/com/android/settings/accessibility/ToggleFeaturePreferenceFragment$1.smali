.class Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$1;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
.source "ToggleFeaturePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Landroid/os/Handler;Ljava/util/List;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateShortcutPreferenceData()V

    .line 142
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateShortcutPreference()V

    return-void
.end method
