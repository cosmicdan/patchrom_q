.class public Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;
.super Ljava/lang/Object;
.source "RuimSmsInterfaces.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final SMS_CDMA_RECORD_LENGTH:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CDMA_RUIM_SMS"

    sput-object v0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDtmfToAscii(B)B
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x44

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x31

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x33

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x35

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x36

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x37

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x38

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x39

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x2a

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x41

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x42

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x43

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static convertSubmitpduToPdu([B)[B
    .locals 22

    new-instance v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v12}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "to get datas from submitpdu"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    :goto_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v7, v0

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v9, v7, [B

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v7, :cond_4

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    aput-byte v19, v9, v15

    if-nez v4, :cond_0

    aget-byte v19, v9, v15

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->convertDtmfToAscii(B)B

    move-result v19

    aput-byte v19, v9, v15

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "convertSubmitpduToPdu: read from submitpdu failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->LOG_TAG:Ljava/lang/String;

    const-string v20, "get datas from submitpdu done! to write datas to a deliverpdu"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v19, 0x64

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v19, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_1
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, v3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "write datas to a deliverpdu done!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-object v17

    :cond_3
    const/16 v19, 0x0

    :try_start_2
    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto/16 :goto_0

    :cond_4
    iput-object v9, v3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v18, v0

    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_5

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v10}, Ljava/io/DataInputStream;->read()I

    move-result v8

    if-lez v8, :cond_2

    new-array v9, v8, [B

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v8, :cond_6

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    aput-byte v19, v9, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_6
    iput-object v9, v12, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v13

    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "convertSubmitpduToPdu: conversion from object to byte array failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->LOG_TAG:Ljava/lang/String;

    const-string v20, "convertSubmitpduToPdu: will never reach here"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    goto :goto_3
.end method

.method public static makeCDMASmsRecordData(I[B)[B
    .locals 7

    const/16 v6, 0xff

    const/4 v5, 0x0

    sget-object v3, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->LOG_TAG:Ljava/lang/String;

    const-string v4, "call makeCDMASmsRecordData to convert a submitpdu to a deliverpdu, so parse process can run directly"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v6, [B

    and-int/lit8 v3, p0, 0x7

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->convertSubmitpduToPdu([B)[B

    move-result-object v2

    const/4 v3, 0x1

    array-length v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    add-int/lit8 v1, v3, 0x1

    :goto_0
    if-ge v1, v6, :cond_0

    const/4 v3, -0x1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
