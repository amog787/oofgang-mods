.class public Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
.super Ljava/lang/Object;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppInfo"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field description:Ljava/lang/CharSequence;

.field icon:Landroid/graphics/drawable/Drawable;

.field isDefault:Z

.field isUicc:Z

.field public label:Ljava/lang/CharSequence;

.field public settingsComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
