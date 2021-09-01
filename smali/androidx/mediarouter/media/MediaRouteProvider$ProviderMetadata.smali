.class public final Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderMetadata"
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 340
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    return-void

    .line 338
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "componentName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 354
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 347
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderMetadata{ componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->mComponentName:Landroid/content/ComponentName;

    .line 360
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
