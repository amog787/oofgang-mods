.class Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment$1;
.super Landroid/text/method/NumberKeyListener;
.source "BillingCycleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 0

    const/16 p0, 0xc

    new-array p0, p0, [C

    .line 288
    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2cs
        0x2es
    .end array-data
.end method

.method public getInputType()I
    .locals 0

    const/16 p0, 0x2002

    return p0
.end method
