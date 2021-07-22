.class public interface abstract Lcom/android/settings/panel/PanelContent;
.super Ljava/lang/Object;
.source "PanelContent.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# virtual methods
.method public getCustomizedButtonTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeaderIconIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSeeMoreIntent()Landroid/content/Intent;
.end method

.method public abstract getSlices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCustomizedButtonUsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClickCustomizedButton()V
    .locals 0

    return-void
.end method

.method public registerCallback(Lcom/android/settings/panel/PanelContentCallback;)V
    .locals 0

    return-void
.end method
