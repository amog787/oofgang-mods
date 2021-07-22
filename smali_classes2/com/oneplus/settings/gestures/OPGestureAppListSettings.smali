.class public Lcom/oneplus/settings/gestures/OPGestureAppListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGestureAppListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mDefaultGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAppListView:Landroid/widget/ListView;

.field private mGestureKey:Ljava/lang/String;

.field private mGesturePackageName:Ljava/lang/String;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureTitle:Ljava/lang/String;

.field private mGestureUid:I

.field private mGestureValueIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;-><init>(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/gestures/OPGestureAppAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)I
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getSelectionPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Landroid/widget/ListView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private createDefaultAppList()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 92
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    sget v2, Lcom/android/settings/R$string;->oneplus_draw_gesture_start_none:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 94
    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    sget v3, Lcom/android/settings/R$string;->oneplus_gestures_open_camera:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v9, ""

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 95
    new-instance v9, Lcom/oneplus/settings/better/OPAppModel;

    sget v3, Lcom/android/settings/R$string;->oneplus_gestures_open_front_camera:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const-string v6, ""

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 96
    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    sget v4, Lcom/android/settings/R$string;->oneplus_gestures_take_video:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v11, ""

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 97
    new-instance v4, Lcom/oneplus/settings/better/OPAppModel;

    sget v5, Lcom/android/settings/R$string;->oneplus_gestures_open_flashlight:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const-string v17, ""

    const-string v19, ""

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 98
    new-instance v5, Lcom/oneplus/settings/better/OPAppModel;

    sget v6, Lcom/android/settings/R$string;->hardware_keys_action_shelf:I

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v11, ""

    const-string v13, ""

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 99
    iget-object v6, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->methodIsMigrated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    iget-object v0, v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    return-object v0
.end method

.method private doNothing()V
    .locals 2

    .line 205
    iget v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private getSelectionPosition()I
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v0
.end method

.method private gotoShortCutsPickPage(Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 3

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_GESTURE_SHORTCUT_LIST_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "op_gesture_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "op_gesture_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v1

    const-string v2, "op_gesture_package_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string v1, "op_gesture_package_app"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 239
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 131
    sget v0, Lcom/android/settings/R$id;->op_gesture_app_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    .line 134
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 137
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 138
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mLoadingContainer:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    .line 141
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->createDefaultAppList()Ljava/util/List;

    .line 142
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    .line 143
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->setDefaultNum(I)V

    .line 145
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->initData()V

    return-void
.end method

.method private openApps(Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 3

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private openBackCamera()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v1, "OpenCamera"

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private openFlashLight()V
    .locals 2

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v1, "OpenTorch"

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private openFrontCamera()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v1, "FrontCamera"

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private openShelf()V
    .locals 2

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v1, "OpenShelf"

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private openTakeVideo()V
    .locals 2

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v1, "TakeVideo"

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private refreshList()V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsGesture(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 200
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    iget v5, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureUid:I

    .line 201
    invoke-static {p0, v4, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->setSelectedItem(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 266
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sget p1, Lcom/android/settings/R$layout;->op_gesture_app_list_activity:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "op_gesture_key"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v0, "op_gesture_action"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureTitle:Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getIndexByGestureValueKey(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    .line 117
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePacakgeUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureUid:I

    .line 120
    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 258
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 156
    iget p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    const/4 p1, 0x1

    if-eqz p3, :cond_7

    if-eq p3, p1, :cond_6

    const/4 p2, 0x2

    if-eq p3, p2, :cond_5

    const/4 p2, 0x3

    if-eq p3, p2, :cond_4

    const/4 p2, 0x4

    if-eq p3, p2, :cond_3

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    sget-object p2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->methodIsMigrated(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openShelf()V

    goto :goto_1

    .line 180
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/settings/better/OPAppModel;

    .line 181
    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCuts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 182
    invoke-direct {p0, p2}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->gotoShortCutsPickPage(Lcom/oneplus/settings/better/OPAppModel;)V

    goto :goto_2

    .line 185
    :cond_2
    invoke-direct {p0, p2}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openApps(Lcom/oneplus/settings/better/OPAppModel;)V

    goto :goto_1

    .line 172
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openFlashLight()V

    goto :goto_1

    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openTakeVideo()V

    goto :goto_1

    .line 166
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openFrontCamera()V

    goto :goto_1

    .line 163
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openBackCamera()V

    goto :goto_1

    .line 160
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->doNothing()V

    :goto_1
    const/4 p1, 0x0

    .line 189
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->refreshList()V

    if-nez p1, :cond_8

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 252
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 245
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->refreshList()V

    return-void
.end method
