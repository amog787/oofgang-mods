.class public Lcom/oneplus/security/SecuritySearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "SecuritySearchIndexablesProvider.java"


# static fields
.field private static INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/provider/SearchIndexableResource;

    .line 32
    new-instance v1, Landroid/provider/SearchIndexableResource;

    sget v2, Lcom/android/settings/R$xml;->data_usage_simcard_prefs:I

    const-class v3, Lcom/oneplus/security/network/view/DataUsageMainActivity;

    .line 33
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->ic_settings_data_usage:I

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/provider/SearchIndexableResource;

    sget v2, Lcom/android/settings/R$xml;->pref_search_network_control:I

    const-class v3, Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->ic_firewall_setting:I

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/security/SecuritySearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 68
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 63
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 44
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 45
    sget-object p1, Lcom/oneplus/security/SecuritySearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    array-length p1, p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryXmlResources INDEXABLE_RES.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecuritySearchIndexablesProvider"

    invoke-static {v0, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object p1, Lcom/oneplus/security/SecuritySearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 49
    iget v5, v3, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 50
    iget v5, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 52
    iget v6, v3, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "android.intent.action.MAIN"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "com.android.settings"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 55
    iget-object v3, v3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v3, v4, v5

    .line 56
    invoke-virtual {p0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
