.class public Lcom/google/android/setupcompat/internal/FallbackThemeWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "FallbackThemeWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    const/4 p0, 0x0

    .line 48
    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method
