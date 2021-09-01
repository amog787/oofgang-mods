.class public Lcom/oneplus/accountsdk/auth/OPAuthorizeActivity;
.super Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onCreate: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
