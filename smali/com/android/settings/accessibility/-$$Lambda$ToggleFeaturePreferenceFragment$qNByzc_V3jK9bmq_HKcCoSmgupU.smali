.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$ToggleFeaturePreferenceFragment$qNByzc_V3jK9bmq_HKcCoSmgupU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleFeaturePreferenceFragment$qNByzc_V3jK9bmq_HKcCoSmgupU;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleFeaturePreferenceFragment$qNByzc_V3jK9bmq_HKcCoSmgupU;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleFeaturePreferenceFragment$qNByzc_V3jK9bmq_HKcCoSmgupU;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleFeaturePreferenceFragment$qNByzc_V3jK9bmq_HKcCoSmgupU;->f$1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$setDialogTextAreaClickListener$2$ToggleFeaturePreferenceFragment(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
