.class public Lcom/android/js/other/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndAskForPermissions(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-static {p0, p1}, Lcom/android/js/other/PermissionRequest;->checkAndAskForPermissionsHelper(Landroid/app/Activity;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 16
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 17
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static checkAndAskForPermissionsHelper(Landroid/app/Activity;Landroid/content/Context;)[Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p1

    .line 22
    invoke-static/range {p0 .. p0}, Lcom/android/js/other/PermissionRequest;->retrievePermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_10

    aget-object v6, v1, v5

    .line 27
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "android.permission.CAMERA"

    const-string v10, "android.permission.READ_CONTACTS"

    const-string v11, "android.permission.RECORD_AUDIO"

    const-string v12, "android.permission.ACCESS_WIFI_STATE"

    const-string v13, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v14, "android.permission.ACCESS_NETWORK_STATE"

    const-string v15, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "android.permission.WRITE_CONTACTS"

    const-string v7, "android.permission.CALL_PHONE"

    move-object/from16 v17, v1

    const-string v1, "android.permission.SEND_SMS"

    move/from16 v18, v3

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    move/from16 v19, v5

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v20, v2

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v21, v0

    const-string v0, "android.permission.WRITE_SETTINGS"

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move-object/from16 v8, v21

    :goto_2
    const/16 v16, -0x1

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0xe

    move-object/from16 v8, v21

    const/16 v16, 0xe

    goto/16 :goto_4

    :sswitch_1
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0xd

    move-object/from16 v8, v21

    const/16 v16, 0xd

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0xc

    move-object/from16 v8, v21

    const/16 v16, 0xc

    goto/16 :goto_4

    :sswitch_3
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0xb

    move-object/from16 v8, v21

    const/16 v16, 0xb

    goto/16 :goto_4

    :sswitch_4
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/16 v6, 0xa

    move-object/from16 v8, v21

    const/16 v16, 0xa

    goto/16 :goto_4

    :sswitch_5
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, 0x9

    move-object/from16 v8, v21

    const/16 v16, 0x9

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const/16 v6, 0x8

    move-object/from16 v8, v21

    const/16 v16, 0x8

    goto/16 :goto_4

    :sswitch_7
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x7

    move-object/from16 v8, v21

    const/16 v16, 0x7

    goto/16 :goto_4

    :sswitch_8
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x6

    move-object/from16 v8, v21

    const/16 v16, 0x6

    goto :goto_4

    :sswitch_9
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x5

    move-object/from16 v8, v21

    const/16 v16, 0x5

    goto :goto_4

    :sswitch_a
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x4

    move-object/from16 v8, v21

    const/16 v16, 0x4

    goto :goto_4

    :sswitch_b
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x3

    move-object/from16 v8, v21

    const/16 v16, 0x3

    goto :goto_4

    :sswitch_c
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_1

    :cond_c
    const/4 v6, 0x2

    move-object/from16 v8, v21

    const/16 v16, 0x2

    goto :goto_4

    :sswitch_d
    move-object/from16 v8, v21

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_d
    const/4 v6, 0x1

    const/16 v16, 0x1

    goto :goto_4

    :sswitch_e
    move-object/from16 v8, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    :goto_3
    goto/16 :goto_2

    :cond_e
    const/16 v16, 0x0

    :goto_4
    packed-switch v16, :pswitch_data_0

    move-object/from16 v6, p1

    move-object/from16 v8, v20

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v6, p1

    .line 90
    invoke-static {v6, v10}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v8, v20

    if-eqz v0, :cond_f

    .line 91
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 60
    invoke-static {v6, v11}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 75
    invoke-static {v6, v12}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 76
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 50
    invoke-static {v6, v13}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    const-string v0, "Manigest"

    .line 29
    invoke-static {v6, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_5
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 35
    invoke-static {v6, v14}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_6
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 80
    invoke-static {v6, v15}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 81
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_7
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 95
    invoke-static {v6, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_8
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 70
    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 71
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_9
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 100
    invoke-static {v6, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 101
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_a
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 40
    invoke-static {v6, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_b
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 55
    invoke-static {v6, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_c
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 65
    invoke-static {v6, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 66
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_d
    move-object/from16 v6, p1

    move-object v0, v8

    move-object/from16 v8, v20

    .line 45
    invoke-static {v6, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_f

    .line 46
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_e
    move-object/from16 v6, p1

    move-object/from16 v8, v20

    .line 85
    invoke-static {v6, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_f

    .line 86
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_5
    add-int/lit8 v5, v19, 0x1

    move-object v0, v6

    move-object v2, v8

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_0

    :cond_10
    move-object v8, v2

    .line 106
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 107
    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_11

    .line 108
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v4

    .line 109
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_11
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7be1381d -> :sswitch_e
        -0x70918bc1 -> :sswitch_d
        -0x6c756e8f -> :sswitch_c
        -0x1833add0 -> :sswitch_b
        -0x3c1ac56 -> :sswitch_a
        0x322a742 -> :sswitch_9
        0x6afff6d -> :sswitch_8
        0xcc96c13 -> :sswitch_7
        0x10424776 -> :sswitch_6
        0x1772a2a5 -> :sswitch_5
        0x1b9efa65 -> :sswitch_4
        0x516a29a7 -> :sswitch_3
        0x63db4d42 -> :sswitch_2
        0x6d24f988 -> :sswitch_1
        0x75dd2d9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static retrievePermissions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should have never happened."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
