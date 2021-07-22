.class public final Lcom/android/settings/wifi/savedaccesspoints/SavedNetworkComparator;
.super Ljava/lang/Object;
.source "SavedNetworkComparator.java"


# static fields
.field public static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/settings/wifi/savedaccesspoints/SavedNetworkComparator$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/savedaccesspoints/SavedNetworkComparator$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/savedaccesspoints/SavedNetworkComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method
