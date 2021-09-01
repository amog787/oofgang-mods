.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Ljava/text/NumberFormat;

.field public final synthetic f$3:D

.field public final synthetic f$4:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$1:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$2:Ljava/text/NumberFormat;

    iput-wide p4, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$3:D

    iput-object p6, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$4:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$1:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$2:Ljava/text/NumberFormat;

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$3:D

    iget-object v5, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;->f$4:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->lambda$refreshSummary$0$TopLevelStoragePreferenceController(Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method
