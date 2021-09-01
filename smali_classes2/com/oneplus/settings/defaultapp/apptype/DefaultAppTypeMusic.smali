.class public Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeMusic;
.super Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
.source "DefaultAppTypeMusic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppFilter()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    const-string p0, "audio/ogg"

    const-string v0, "audio/x-ms-wma"

    const-string v1, "audio/x-wav"

    const-string v2, "audio/amr"

    const-string v3, "audio/aac"

    const-string v4, "audio/mpeg"

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.DEFAULT"

    .line 172
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v9, "content"

    .line 173
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v10, "media"

    const/4 v11, 0x0

    .line 174
    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    .line 178
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    :goto_0
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :try_start_1
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v12

    .line 189
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :goto_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :try_start_2
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v12

    .line 200
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    :goto_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_3
    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v12

    .line 211
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    :goto_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :try_start_4
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v12

    .line 222
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    :goto_4
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v6, v10, v11}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :try_start_5
    invoke-virtual {v6, p0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v10

    .line 233
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    :goto_5
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 242
    :try_start_6
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v10

    .line 244
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    :goto_6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v10, "file"

    .line 250
    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 252
    :try_start_7
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v4

    .line 254
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :goto_7
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 262
    :try_start_8
    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v6

    .line 264
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    :goto_8
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 272
    :try_start_9
    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v3

    .line 274
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    :goto_9
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 283
    :try_start_a
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v4

    .line 285
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    :goto_a
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 293
    :try_start_b
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    .line 295
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    :goto_b
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 304
    :try_start_c
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v3

    .line 306
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    :goto_c
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 314
    :try_start_d
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    :goto_d
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 325
    :try_start_e
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v2

    .line 327
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    :goto_e
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 335
    :try_start_f
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    :goto_f
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 345
    :try_start_10
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    :goto_10
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 355
    :try_start_11
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception p0

    .line 357
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    :goto_11
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5
.end method

.method public getAppIntent()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    .line 33
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "content://media"

    .line 34
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "audio/mpeg"

    .line 35
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "audio/aac"

    .line 41
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v7, "audio/amr"

    .line 47
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v8, "audio/x-wav"

    .line 53
    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v9, "audio/x-ms-wma"

    .line 59
    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "audio/ogg"

    .line 65
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "content://"

    .line 71
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 72
    invoke-virtual {v0, v10, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "file://"

    .line 77
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 78
    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 84
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 90
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 96
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 102
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 108
    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 114
    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 121
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 127
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 135
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAppMatchParam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x600000

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
