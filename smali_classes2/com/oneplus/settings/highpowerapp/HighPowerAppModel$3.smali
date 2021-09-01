.class Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;
.super Ljava/lang/Object;
.source "HighPowerAppModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/settings/highpowerapp/HighPowerApp;Lcom/oneplus/settings/highpowerapp/HighPowerApp;)I
    .locals 0

    .line 92
    iget-object p0, p1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    iget-object p1, p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 89
    check-cast p1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    check-cast p2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel$3;->compare(Lcom/oneplus/settings/highpowerapp/HighPowerApp;Lcom/oneplus/settings/highpowerapp/HighPowerApp;)I

    move-result p0

    return p0
.end method
