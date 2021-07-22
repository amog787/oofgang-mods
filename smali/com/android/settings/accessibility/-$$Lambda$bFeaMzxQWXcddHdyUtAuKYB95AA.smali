.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$bFeaMzxQWXcddHdyUtAuKYB95AA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$bFeaMzxQWXcddHdyUtAuKYB95AA;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$bFeaMzxQWXcddHdyUtAuKYB95AA;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method
