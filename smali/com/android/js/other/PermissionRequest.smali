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
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-static {p0, p1}, Lcom/android/js/other/PermissionRequest;->checkAndAskForPermissionsHelper(Landroid/app/Activity;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "permissions":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 17
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 18
    :cond_0
    return-void
.end method

.method private static checkAndAskForPermissionsHelper(Landroid/app/Activity;Landroid/content/Context;)[Ljava/lang/String;
    .locals 22
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Lcom/android/js/other/PermissionRequest;->retrievePermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "totalPermissions":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v2, "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_11

    aget-object v6, v1, v5

    .line 27
    .local v6, "permission":Ljava/lang/String;
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

    .end local v1    # "totalPermissions":[Ljava/lang/String;
    .local v17, "totalPermissions":[Ljava/lang/String;
    const-string v1, "android.permission.SEND_SMS"

    move/from16 v18, v3

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    move/from16 v19, v5

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v20, v2

    .end local v2    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v20, "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v21, v0

    const-string v0, "android.permission.WRITE_SETTINGS"

    sparse-switch v8, :sswitch_data_0

    move-object/from16 v8, v21

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0xc

    move-object/from16 v8, v21

    const/16 v16, 0xc

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x6

    move-object/from16 v8, v21

    const/16 v16, 0x6

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x9

    move-object/from16 v8, v21

    const/16 v16, 0x9

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    move-object/from16 v8, v21

    const/16 v16, 0x4

    goto/16 :goto_2

    :sswitch_4
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v8, v21

    const/16 v16, 0x0

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move-object/from16 v8, v21

    const/16 v16, 0x1

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0xa

    move-object/from16 v8, v21

    const/16 v16, 0xa

    goto/16 :goto_2

    :sswitch_7
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0xd

    move-object/from16 v8, v21

    const/16 v16, 0xd

    goto :goto_2

    :sswitch_8
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x8

    move-object/from16 v8, v21

    const/16 v16, 0x8

    goto :goto_2

    :sswitch_9
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0xe

    move-object/from16 v8, v21

    const/16 v16, 0xe

    goto :goto_2

    :sswitch_a
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    move-object/from16 v8, v21

    const/16 v16, 0x2

    goto :goto_2

    :sswitch_b
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    move-object/from16 v8, v21

    const/16 v16, 0x5

    goto :goto_2

    :sswitch_c
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x7

    move-object/from16 v8, v21

    const/16 v16, 0x7

    goto :goto_2

    :cond_0
    move-object/from16 v8, v21

    goto :goto_1

    :sswitch_d
    move-object/from16 v8, v21

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v16, 0x3

    goto :goto_2

    :sswitch_e
    move-object/from16 v8, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v16, 0xb

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v16, -0x1

    :goto_2
    packed-switch v16, :pswitch_data_0

    move-object/from16 v8, p1

    move-object/from16 v0, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_3

    .line 100
    .end local v0    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    move-object/from16 v8, p1

    invoke-static {v8, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 100
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v9

    goto/16 :goto_3

    .line 95
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 95
    :cond_3
    move-object v0, v9

    goto/16 :goto_3

    .line 90
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v10}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 90
    :cond_4
    move-object v0, v9

    goto/16 :goto_3

    .line 85
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 85
    :cond_5
    move-object v0, v9

    goto/16 :goto_3

    .line 80
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v15}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 80
    :cond_6
    move-object v0, v9

    goto/16 :goto_3

    .line 75
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v12}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 75
    :cond_7
    move-object v0, v9

    goto/16 :goto_3

    .line 70
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v7}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 70
    :cond_8
    move-object v0, v9

    goto/16 :goto_3

    .line 65
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_7
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 65
    :cond_9
    move-object v0, v9

    goto/16 :goto_3

    .line 60
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_8
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v11}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 61
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 60
    :cond_a
    move-object v0, v9

    goto/16 :goto_3

    .line 55
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_9
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 56
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_3

    .line 55
    :cond_b
    move-object v0, v9

    goto/16 :goto_3

    .line 50
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_a
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v13}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 51
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_3

    .line 50
    :cond_c
    move-object v0, v9

    goto :goto_3

    .line 45
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_b
    move-object v0, v8

    move-object/from16 v9, v20

    move-object/from16 v8, p1

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d

    .line 46
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_3

    .line 45
    :cond_d
    move-object v0, v9

    goto :goto_3

    .line 40
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_c
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 41
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_3

    .line 40
    :cond_e
    move-object v0, v9

    goto :goto_3

    .line 35
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_d
    move-object/from16 v8, p1

    move-object/from16 v9, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v8, v14}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_3

    .line 35
    :cond_f
    move-object v0, v9

    goto :goto_3

    .line 29
    .end local v9    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_e
    move-object/from16 v8, p1

    move-object/from16 v0, v20

    .end local v20    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Manigest"

    invoke-static {v8, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    .line 30
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .end local v6    # "permission":Ljava/lang/String;
    :cond_10
    :goto_3
    add-int/lit8 v5, v19, 0x1

    move-object v2, v0

    move-object v0, v8

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_0

    .line 106
    .end local v0    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "totalPermissions":[Ljava/lang/String;
    .restart local v1    # "totalPermissions":[Ljava/lang/String;
    .restart local v2    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    move-object v8, v0

    move-object/from16 v17, v1

    move-object v0, v2

    .end local v1    # "totalPermissions":[Ljava/lang/String;
    .end local v2    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "permissionsToBeGranted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "totalPermissions":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 107
    .local v1, "permissions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 109
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 112
    .end local v2    # "i":I
    :cond_12
    return-object v1

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
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    nop

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This should have never happened."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
