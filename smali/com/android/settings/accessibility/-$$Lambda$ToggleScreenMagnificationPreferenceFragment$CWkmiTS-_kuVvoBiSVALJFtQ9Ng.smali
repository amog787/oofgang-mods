.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenMagnificationPreferenceFragment$CWkmiTS-_kuVvoBiSVALJFtQ9Ng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenMagnificationPreferenceFragment$CWkmiTS-_kuVvoBiSVALJFtQ9Ng;->f$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenMagnificationPreferenceFragment$CWkmiTS-_kuVvoBiSVALJFtQ9Ng;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenMagnificationPreferenceFragment$CWkmiTS-_kuVvoBiSVALJFtQ9Ng;->f$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$ToggleScreenMagnificationPreferenceFragment$CWkmiTS-_kuVvoBiSVALJFtQ9Ng;->f$1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->lambda$setDialogTextAreaClickListener$1$ToggleScreenMagnificationPreferenceFragment(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
