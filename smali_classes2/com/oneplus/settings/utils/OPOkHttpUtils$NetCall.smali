.class public interface abstract Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;
.super Ljava/lang/Object;
.source "OPOkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/utils/OPOkHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetCall"
.end annotation


# virtual methods
.method public abstract failed(Lokhttp3/Call;Ljava/io/IOException;)V
.end method

.method public abstract success(Lokhttp3/Call;Lokhttp3/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
