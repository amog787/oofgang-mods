.class public final synthetic Lcom/android/settings/accessibility/-$$Lambda$AccessibilitySettings$iTvFw30Psh9IDXDwjn83Cijv6RU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/AccessibilitySettings;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilitySettings$iTvFw30Psh9IDXDwjn83Cijv6RU;->f$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilitySettings$iTvFw30Psh9IDXDwjn83Cijv6RU;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilitySettings$iTvFw30Psh9IDXDwjn83Cijv6RU;->f$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    iget-object p0, p0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilitySettings$iTvFw30Psh9IDXDwjn83Cijv6RU;->f$1:Ljava/util/List;

    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->lambda$getInstalledAccessibilityList$0$AccessibilitySettings(Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method
