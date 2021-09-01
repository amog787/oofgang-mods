.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$c9pnez0JrK86T1it1LYXu2cpAlY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$c9pnez0JrK86T1it1LYXu2cpAlY;->f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$c9pnez0JrK86T1it1LYXu2cpAlY;->f$0:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onDialogButtonFromShortcutClicked(Landroid/view/View;)V

    return-void
.end method
