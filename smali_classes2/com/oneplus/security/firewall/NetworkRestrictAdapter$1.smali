.class Lcom/oneplus/security/firewall/NetworkRestrictAdapter$1;
.super Ljava/lang/Object;
.source "NetworkRestrictAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->updateData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oneplus/security/firewall/AppUidItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictAdapter;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/security/firewall/AppUidItem;Lcom/oneplus/security/firewall/AppUidItem;)I
    .locals 5

    .line 145
    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/firewall/AppPkgItem;

    .line 146
    invoke-virtual {p2}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/security/firewall/AppPkgItem;

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/security/firewall/AppPkgItem;->isSystemApp()Z

    move-result p2

    .line 148
    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppPkgItem;->isSystemApp()Z

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/security/firewall/AppPkgItem;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/security/utils/CharUtil;->isChinese(Ljava/lang/String;)Z

    move-result v1

    .line 150
    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppPkgItem;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/security/utils/CharUtil;->isChinese(Ljava/lang/String;)Z

    move-result v2

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/security/firewall/AppPkgItem;->getAppSortKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppPkgItem;->getAppSortKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    return v4

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    return v3

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/security/firewall/AppPkgItem;->getAppSortKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppPkgItem;->getAppSortKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 141
    check-cast p1, Lcom/oneplus/security/firewall/AppUidItem;

    check-cast p2, Lcom/oneplus/security/firewall/AppUidItem;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$1;->compare(Lcom/oneplus/security/firewall/AppUidItem;Lcom/oneplus/security/firewall/AppUidItem;)I

    move-result p0

    return p0
.end method
