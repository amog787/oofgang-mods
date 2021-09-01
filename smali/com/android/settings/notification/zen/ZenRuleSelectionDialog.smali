.class public Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenRuleSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$LoadIconTask;,
        Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$PositiveClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final RULE_TYPE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/zen/ZenRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mNm:Landroid/app/NotificationManager;

.field private static mPm:Landroid/content/pm/PackageManager;

.field protected static mPositiveClickListener:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$PositiveClickListener;

.field private static mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# instance fields
.field private mRuleContainer:Landroid/widget/LinearLayout;

.field private final mServiceListingCallback:Lcom/android/settings/utils/ZenServiceListing$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->DEBUG:Z

    .line 212
    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->RULE_TYPE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 191
    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$2;-><init>(Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings/utils/ZenServiceListing$Callback;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->RULE_TYPE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/pm/PackageManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/NotificationManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mNm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;Ljava/util/Set;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->bindExternalRules(Ljava/util/Set;)V

    return-void
.end method

.method private bindExternalRules(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/settings/notification/zen/ZenRuleInfo;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/zen/ZenRuleInfo;

    .line 187
    invoke-direct {p0, v0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/zen/ZenRuleInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindType(Lcom/android/settings/notification/zen/ZenRuleInfo;)V
    .locals 6

    .line 118
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/settings/R$layout;->zen_rule_type:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 122
    sget v3, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 123
    sget v4, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-boolean v4, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->isSystem:Z

    if-nez v4, :cond_0

    .line 125
    new-instance v4, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$LoadIconTask;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$LoadIconTask;-><init>(Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;Landroid/widget/ImageView;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/pm/ApplicationInfo;

    aput-object v0, v3, v2

    .line 126
    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    sget v3, Lcom/android/settings/R$id;->subtitle:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 129
    sget-object v4, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_timelapse:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_event:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;-><init>(Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;Lcom/android/settings/notification/zen/ZenRuleInfo;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mRuleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private defaultNewEvent()Lcom/android/settings/notification/zen/ZenRuleInfo;
    .locals 3

    .line 171
    new-instance p0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 175
    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenRuleInfo;-><init>()V

    const-string v1, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    .line 176
    iput-object v1, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 177
    sget-object v1, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->zen_event_rule_type_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    .line 178
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 179
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 180
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const/4 p0, 0x1

    .line 181
    iput-boolean p0, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->isSystem:Z

    return-object v0
.end method

.method private defaultNewSchedule()Lcom/android/settings/notification/zen/ZenRuleInfo;
    .locals 3

    .line 156
    new-instance p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {p0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 157
    sget-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v0, 0x16

    .line 158
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v0, 0x7

    .line 159
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 160
    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenRuleInfo;-><init>()V

    const-string v1, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 161
    iput-object v1, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 162
    sget-object v1, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->zen_schedule_rule_type_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    .line 163
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 164
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 165
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const/4 p0, 0x1

    .line 166
    iput-boolean p0, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->isSystem:Z

    return-object v0
.end method

.method public static show(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$PositiveClickListener;Lcom/android/settings/utils/ZenServiceListing;)V
    .locals 0

    .line 78
    sput-object p2, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mPositiveClickListener:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$PositiveClickListener;

    .line 79
    sput-object p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mPm:Landroid/content/pm/PackageManager;

    .line 81
    sget-object p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    sput-object p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mNm:Landroid/app/NotificationManager;

    .line 82
    sput-object p3, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    .line 84
    new-instance p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;-><init>()V

    const/4 p2, 0x0

    .line 85
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 86
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "ZenRuleSelectionDialog"

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4f6

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->zen_rule_type_selection:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    sget v0, Lcom/android/settings/R$id;->rule_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mRuleContainer:Landroid/widget/LinearLayout;

    .line 95
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->defaultNewEvent()Lcom/android/settings/notification/zen/ZenRuleInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/zen/ZenRuleInfo;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->defaultNewSchedule()Lcom/android/settings/notification/zen/ZenRuleInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/zen/ZenRuleInfo;)V

    .line 98
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings/utils/ZenServiceListing$Callback;

    invoke-virtual {v0, v2}, Lcom/android/settings/utils/ZenServiceListing;->addZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V

    .line 99
    sget-object v0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 101
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->zen_mode_choose_rule_type:I

    .line 102
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->cancel:I

    .line 104
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 111
    sget-object p1, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    if-eqz p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->mServiceListingCallback:Lcom/android/settings/utils/ZenServiceListing$Callback;

    invoke-virtual {p1, p0}, Lcom/android/settings/utils/ZenServiceListing;->removeZenCallback(Lcom/android/settings/utils/ZenServiceListing$Callback;)V

    :cond_0
    return-void
.end method
