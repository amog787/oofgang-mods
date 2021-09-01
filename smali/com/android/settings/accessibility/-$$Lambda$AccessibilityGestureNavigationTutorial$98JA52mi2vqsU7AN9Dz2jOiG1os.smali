.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$98JA52mi2vqsU7AN9Dz2jOiG1os;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$98JA52mi2vqsU7AN9Dz2jOiG1os;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityGestureNavigationTutorial$98JA52mi2vqsU7AN9Dz2jOiG1os;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->lambda$createShortcutNavigationContentView$1(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
