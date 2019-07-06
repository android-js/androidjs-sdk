.class public final Lcom/facebook/soloader/MinElf;
.super Ljava/lang/Object;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/MinElf$ElfError;
    }
.end annotation


# static fields
.field public static final DT_NEEDED:I = 0x1

.field public static final DT_NULL:I = 0x0

.field public static final DT_STRTAB:I = 0x5

.field public static final ELF_MAGIC:I = 0x464c457f

.field public static final PN_XNUM:I = 0xffff

.field public static final PT_DYNAMIC:I = 0x2

.field public static final PT_LOAD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract_DT_NEEDED(Ljava/io/File;)[Ljava/lang/String;
    .locals 2
    .param p0, "elfFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    .local v0, "is":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 48
    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 51
    throw v1
.end method

.method public static extract_DT_NEEDED(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;
    .locals 44
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 72
    .local v1, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    const-wide/32 v6, 0x464c457f

    cmp-long v8, v4, v6

    if-nez v8, :cond_24

    .line 77
    const-wide/16 v4, 0x4

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move v6, v7

    .line 78
    .local v6, "is32":Z
    const-wide/16 v7, 0x5

    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 79
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    :cond_1
    const-wide/16 v9, 0x1c

    const-wide/16 v11, 0x20

    if-eqz v6, :cond_2

    .line 87
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v13

    goto :goto_1

    :cond_2
    nop

    .line 88
    invoke-static {v0, v1, v11, v12}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v13

    :goto_1
    nop

    .line 90
    .local v13, "e_phoff":J
    const-wide/16 v7, 0x2c

    if-eqz v6, :cond_3

    .line 91
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v15

    int-to-long v4, v15

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x38

    .line 92
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v4

    int-to-long v4, v4

    :goto_2
    nop

    .line 94
    .local v4, "e_phnum":J
    if-eqz v6, :cond_4

    const-wide/16 v2, 0x2a

    .line 95
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v2

    goto :goto_3

    :cond_4
    const-wide/16 v2, 0x36

    .line 96
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v2

    :goto_3
    nop

    .line 98
    .local v2, "e_phentsize":I
    const-wide/32 v21, 0xffff

    const-wide/16 v7, 0x28

    cmp-long v3, v4, v21

    if-nez v3, :cond_7

    .line 100
    if-eqz v6, :cond_5

    .line 101
    invoke-static {v0, v1, v11, v12}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    goto :goto_4

    :cond_5
    nop

    .line 102
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    :goto_4
    nop

    .line 104
    .local v11, "e_shoff":J
    if-eqz v6, :cond_6

    add-long/2addr v9, v11

    .line 105
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_5

    :cond_6
    const-wide/16 v9, 0x2c

    add-long/2addr v9, v11

    .line 106
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    :goto_5
    nop

    .line 108
    .local v9, "sh_info":J
    move-wide v4, v9

    .line 111
    .end local v9    # "sh_info":J
    .end local v11    # "e_shoff":J
    :cond_7
    const-wide/16 v9, 0x0

    .line 112
    .local v9, "dynStart":J
    move-wide v11, v13

    .line 114
    .local v11, "phdr":J
    const-wide/16 v21, 0x0

    .local v21, "i":J
    :goto_6
    const-wide/16 v23, 0x1

    const-wide/16 v25, 0x8

    cmp-long v3, v21, v4

    if-gez v3, :cond_b

    .line 115
    if-eqz v6, :cond_8

    const-wide/16 v15, 0x0

    add-long v7, v11, v15

    .line 116
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    goto :goto_7

    :cond_8
    const-wide/16 v15, 0x0

    add-long v7, v11, v15

    .line 117
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    :goto_7
    nop

    .line 119
    .local v7, "p_type":J
    const-wide/16 v29, 0x2

    cmp-long v3, v7, v29

    if-nez v3, :cond_a

    .line 120
    if-eqz v6, :cond_9

    move-wide/from16 v29, v7

    const-wide/16 v19, 0x4

    .end local v7    # "p_type":J
    .local v29, "p_type":J
    add-long v7, v11, v19

    .line 121
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    goto :goto_8

    .end local v29    # "p_type":J
    .restart local v7    # "p_type":J
    :cond_9
    move-wide/from16 v29, v7

    .end local v7    # "p_type":J
    .restart local v29    # "p_type":J
    add-long v7, v11, v25

    .line 122
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    :goto_8
    nop

    .line 124
    .local v7, "p_offset":J
    move-wide v9, v7

    .line 125
    goto :goto_9

    .line 128
    .end local v29    # "p_type":J
    .local v7, "p_type":J
    :cond_a
    move-wide/from16 v29, v7

    .end local v7    # "p_type":J
    .restart local v29    # "p_type":J
    int-to-long v7, v2

    add-long/2addr v11, v7

    .line 114
    .end local v29    # "p_type":J
    add-long v21, v21, v23

    const-wide/16 v7, 0x28

    goto :goto_6

    .line 131
    .end local v21    # "i":J
    :cond_b
    :goto_9
    const-wide/16 v7, 0x0

    cmp-long v3, v9, v7

    if-eqz v3, :cond_23

    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "nr_DT_NEEDED":I
    move-wide v7, v9

    .line 142
    .local v7, "dyn":J
    const-wide/16 v21, 0x0

    .line 145
    .local v21, "ptr_DT_STRTAB":J
    :goto_a
    if-eqz v6, :cond_c

    move-wide/from16 v29, v11

    const-wide/16 v15, 0x0

    .end local v11    # "phdr":J
    .local v29, "phdr":J
    add-long v11, v7, v15

    .line 146
    invoke-static {v0, v1, v11, v12}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    goto :goto_b

    .end local v29    # "phdr":J
    .restart local v11    # "phdr":J
    :cond_c
    move-wide/from16 v29, v11

    const-wide/16 v15, 0x0

    .end local v11    # "phdr":J
    .restart local v29    # "phdr":J
    add-long v11, v7, v15

    .line 147
    invoke-static {v0, v1, v11, v12}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    :goto_b
    nop

    .line 149
    .local v11, "d_tag":J
    const-string v15, "malformed DT_NEEDED section"

    cmp-long v33, v11, v23

    if-nez v33, :cond_e

    .line 150
    move-wide/from16 v33, v9

    const v9, 0x7fffffff

    .end local v9    # "dynStart":J
    .local v33, "dynStart":J
    if-eq v3, v9, :cond_d

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 151
    :cond_d
    new-instance v9, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v9, v15}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 155
    .end local v33    # "dynStart":J
    .restart local v9    # "dynStart":J
    :cond_e
    move-wide/from16 v33, v9

    .end local v9    # "dynStart":J
    .restart local v33    # "dynStart":J
    const-wide/16 v9, 0x5

    cmp-long v17, v11, v9

    if-nez v17, :cond_10

    .line 156
    if-eqz v6, :cond_f

    const-wide/16 v17, 0x4

    add-long v9, v7, v17

    .line 157
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_c

    :cond_f
    add-long v9, v7, v25

    .line 158
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    :goto_c
    move-wide/from16 v21, v9

    .line 161
    :cond_10
    :goto_d
    if-eqz v6, :cond_11

    move-wide/from16 v17, v25

    goto :goto_e

    :cond_11
    const-wide/16 v17, 0x10

    :goto_e
    add-long v7, v7, v17

    .line 162
    const-wide/16 v17, 0x0

    cmp-long v31, v11, v17

    if-nez v31, :cond_22

    .line 164
    cmp-long v31, v21, v17

    if-eqz v31, :cond_21

    .line 170
    const-wide/16 v31, 0x0

    .line 171
    .local v31, "off_DT_STRTAB":J
    move-wide/from16 v29, v13

    .line 173
    const/16 v35, 0x0

    move/from16 v9, v35

    .local v9, "i":I
    :goto_f
    move-wide/from16 v38, v7

    .end local v7    # "dyn":J
    .local v38, "dyn":J
    int-to-long v7, v9

    cmp-long v10, v7, v4

    if-gez v10, :cond_18

    .line 174
    if-eqz v6, :cond_12

    move-wide/from16 v17, v4

    const-wide/16 v7, 0x0

    .end local v4    # "e_phnum":J
    .local v17, "e_phnum":J
    add-long v4, v29, v7

    .line 175
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_10

    .end local v17    # "e_phnum":J
    .restart local v4    # "e_phnum":J
    :cond_12
    move-wide/from16 v17, v4

    const-wide/16 v7, 0x0

    .end local v4    # "e_phnum":J
    .restart local v17    # "e_phnum":J
    add-long v4, v29, v7

    .line 176
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    :goto_10
    nop

    .line 178
    .local v4, "p_type":J
    cmp-long v10, v4, v23

    if-nez v10, :cond_17

    .line 179
    if-eqz v6, :cond_13

    add-long v7, v29, v25

    .line 180
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    move-wide/from16 v36, v4

    move-wide v4, v7

    const-wide/16 v7, 0x10

    goto :goto_11

    :cond_13
    move-wide/from16 v36, v4

    const-wide/16 v7, 0x10

    .end local v4    # "p_type":J
    .local v36, "p_type":J
    add-long v4, v29, v7

    .line 181
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    :goto_11
    nop

    .line 183
    .local v4, "p_vaddr":J
    if-eqz v6, :cond_14

    const-wide/16 v40, 0x14

    add-long v7, v29, v40

    .line 184
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    move-wide/from16 v27, v11

    move-wide v10, v7

    const-wide/16 v7, 0x28

    goto :goto_12

    :cond_14
    move-wide/from16 v27, v11

    const-wide/16 v7, 0x28

    .end local v11    # "d_tag":J
    .local v27, "d_tag":J
    add-long v10, v29, v7

    .line 185
    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    :goto_12
    nop

    .line 187
    .local v10, "p_memsz":J
    cmp-long v12, v4, v21

    if-gtz v12, :cond_16

    add-long v40, v4, v10

    cmp-long v12, v21, v40

    if-gez v12, :cond_16

    .line 188
    if-eqz v6, :cond_15

    move-wide/from16 v40, v10

    const-wide/16 v7, 0x4

    .end local v10    # "p_memsz":J
    .local v40, "p_memsz":J
    add-long v10, v29, v7

    .line 189
    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    goto :goto_13

    .end local v40    # "p_memsz":J
    .restart local v10    # "p_memsz":J
    :cond_15
    move-wide/from16 v40, v10

    .end local v10    # "p_memsz":J
    .restart local v40    # "p_memsz":J
    add-long v7, v29, v25

    .line 190
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    :goto_13
    nop

    .line 192
    .local v7, "p_offset":J
    sub-long v10, v21, v4

    add-long v31, v7, v10

    .line 193
    goto :goto_15

    .line 187
    .end local v7    # "p_offset":J
    .end local v40    # "p_memsz":J
    .restart local v10    # "p_memsz":J
    :cond_16
    move-wide/from16 v40, v10

    .end local v10    # "p_memsz":J
    .restart local v40    # "p_memsz":J
    goto :goto_14

    .line 178
    .end local v27    # "d_tag":J
    .end local v36    # "p_type":J
    .end local v40    # "p_memsz":J
    .local v4, "p_type":J
    .restart local v11    # "d_tag":J
    :cond_17
    move-wide/from16 v36, v4

    move-wide/from16 v27, v11

    const-wide/16 v7, 0x28

    .line 197
    .end local v4    # "p_type":J
    .end local v11    # "d_tag":J
    .restart local v27    # "d_tag":J
    .restart local v36    # "p_type":J
    :goto_14
    int-to-long v4, v2

    add-long v29, v29, v4

    .line 173
    .end local v36    # "p_type":J
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v4, v17

    move-wide/from16 v11, v27

    move-wide/from16 v7, v38

    goto/16 :goto_f

    .end local v17    # "e_phnum":J
    .end local v27    # "d_tag":J
    .local v4, "e_phnum":J
    .restart local v11    # "d_tag":J
    :cond_18
    move-wide/from16 v17, v4

    move-wide/from16 v27, v11

    .line 200
    .end local v4    # "e_phnum":J
    .end local v9    # "i":I
    .end local v11    # "d_tag":J
    .restart local v17    # "e_phnum":J
    .restart local v27    # "d_tag":J
    :goto_15
    const-wide/16 v4, 0x0

    cmp-long v7, v31, v4

    if-eqz v7, :cond_20

    .line 204
    new-array v7, v3, [Ljava/lang/String;

    .line 206
    .local v7, "needed":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 207
    move-wide/from16 v8, v33

    .line 210
    .end local v38    # "dyn":J
    .local v8, "dyn":J
    :cond_19
    if-eqz v6, :cond_1a

    const-wide/16 v4, 0x0

    add-long v10, v8, v4

    .line 211
    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto :goto_16

    :cond_1a
    const-wide/16 v4, 0x0

    add-long v10, v8, v4

    .line 212
    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    :goto_16
    move-wide/from16 v27, v10

    .line 214
    cmp-long v10, v27, v23

    if-nez v10, :cond_1d

    .line 215
    if-eqz v6, :cond_1b

    const-wide/16 v10, 0x4

    add-long v4, v8, v10

    .line 216
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_17

    :cond_1b
    const-wide/16 v10, 0x4

    add-long v4, v8, v25

    .line 217
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    :goto_17
    nop

    .line 219
    .local v4, "d_val":J
    add-long v10, v31, v4

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->getSz(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v3

    .line 220
    const v10, 0x7fffffff

    if-eq v3, v10, :cond_1c

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 221
    :cond_1c
    new-instance v10, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v10, v15}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v10

    .line 214
    .end local v4    # "d_val":J
    :cond_1d
    const v10, 0x7fffffff

    .line 227
    :goto_18
    if-eqz v6, :cond_1e

    move-wide/from16 v4, v25

    goto :goto_19

    :cond_1e
    const-wide/16 v4, 0x10

    :goto_19
    add-long/2addr v8, v4

    .line 228
    const-wide/16 v4, 0x0

    cmp-long v11, v27, v4

    if-nez v11, :cond_19

    .line 230
    array-length v4, v7

    if-ne v3, v4, :cond_1f

    .line 234
    return-object v7

    .line 231
    :cond_1f
    new-instance v4, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v4, v15}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    .end local v7    # "needed":[Ljava/lang/String;
    .end local v8    # "dyn":J
    .restart local v38    # "dyn":J
    :cond_20
    new-instance v4, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v5, "did not find file offset of DT_STRTAB table"

    invoke-direct {v4, v5}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    .end local v17    # "e_phnum":J
    .end local v27    # "d_tag":J
    .end local v31    # "off_DT_STRTAB":J
    .end local v38    # "dyn":J
    .local v4, "e_phnum":J
    .local v7, "dyn":J
    .restart local v11    # "d_tag":J
    :cond_21
    move-wide/from16 v17, v4

    move-wide/from16 v38, v7

    move-wide/from16 v27, v11

    .end local v4    # "e_phnum":J
    .end local v7    # "dyn":J
    .end local v11    # "d_tag":J
    .restart local v17    # "e_phnum":J
    .restart local v27    # "d_tag":J
    .restart local v38    # "dyn":J
    new-instance v4, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v5, "Dynamic section string-table not found"

    invoke-direct {v4, v5}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    .end local v17    # "e_phnum":J
    .end local v27    # "d_tag":J
    .end local v38    # "dyn":J
    .restart local v4    # "e_phnum":J
    .restart local v7    # "dyn":J
    .restart local v11    # "d_tag":J
    :cond_22
    move-wide/from16 v38, v7

    move-wide/from16 v27, v11

    const-wide/16 v7, 0x28

    move-wide/from16 v42, v4

    move-wide/from16 v4, v17

    move-wide/from16 v17, v42

    .end local v4    # "e_phnum":J
    .end local v7    # "dyn":J
    .end local v11    # "d_tag":J
    .restart local v17    # "e_phnum":J
    .restart local v27    # "d_tag":J
    .restart local v38    # "dyn":J
    move-wide/from16 v4, v17

    move-wide/from16 v11, v29

    move-wide/from16 v9, v33

    move-wide/from16 v7, v38

    goto/16 :goto_a

    .line 132
    .end local v3    # "nr_DT_NEEDED":I
    .end local v17    # "e_phnum":J
    .end local v21    # "ptr_DT_STRTAB":J
    .end local v27    # "d_tag":J
    .end local v29    # "phdr":J
    .end local v33    # "dynStart":J
    .end local v38    # "dyn":J
    .restart local v4    # "e_phnum":J
    .local v9, "dynStart":J
    .local v11, "phdr":J
    :cond_23
    move-wide/from16 v17, v4

    move-wide/from16 v33, v9

    move-wide/from16 v29, v11

    .end local v4    # "e_phnum":J
    .end local v9    # "dynStart":J
    .end local v11    # "phdr":J
    .restart local v17    # "e_phnum":J
    .restart local v29    # "phdr":J
    .restart local v33    # "dynStart":J
    new-instance v3, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v4, "ELF file does not contain dynamic linking information"

    invoke-direct {v3, v4}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    .end local v2    # "e_phentsize":I
    .end local v6    # "is32":Z
    .end local v13    # "e_phoff":J
    .end local v17    # "e_phnum":J
    .end local v29    # "phdr":J
    .end local v33    # "dynStart":J
    :cond_24
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "file is not ELF"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    return-void
.end method

.method private static get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 2
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    const/16 v0, 0x8

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSz(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .locals 3
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    .end local p2    # "offset":J
    .local v1, "offset":J
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result p2

    move p3, p2

    .local p3, "b":S
    if-eqz p2, :cond_0

    .line 242
    int-to-char p2, p3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v1

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    return-object p2
.end method

.method private static getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 283
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 4
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 277
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S
    .locals 1
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V
    .locals 4
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "sz"    # I
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 253
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 254
    invoke-virtual {p0, p1, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    .line 255
    .local v1, "numBytesRead":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 256
    goto :goto_1

    .line 258
    :cond_0
    int-to-long v2, v1

    add-long/2addr p3, v2

    .line 259
    .end local v1    # "numBytesRead":I
    goto :goto_0

    .line 261
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_2

    .line 265
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    return-void

    .line 262
    :cond_2
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "ELF file truncated"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method
