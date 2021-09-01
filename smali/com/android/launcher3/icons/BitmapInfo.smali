.class public Lcom/android/launcher3/icons/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BitmapInfo$Extender;
    }
.end annotation


# static fields
.field public static final LOW_RES_ICON:Landroid/graphics/Bitmap;


# instance fields
.field public final icon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    .line 26
    invoke-static {v0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, v0}, Lcom/android/launcher3/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public static of(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method
