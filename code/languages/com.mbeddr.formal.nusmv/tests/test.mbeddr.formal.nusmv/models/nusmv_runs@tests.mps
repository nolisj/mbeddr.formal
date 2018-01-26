<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ce9852a1-599d-463d-a78b-0ce2296a0737(test.mbeddr.formal.nusmv.nusmv_runs@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil" version="1" />
  </languages>
  <imports>
    <import index="82db" ref="r:d9e70cd7-5bba-4146-b9d2-6eab353213c5(test.mbeddr.formal.nusmv.tests)" />
    <import index="4c75" ref="r:088add12-8a36-47c2-b0d2-7180a8a2a891(com.mbeddr.formal.nusmv.pluginSolution.runner)" />
    <import index="fnq2" ref="r:412c918d-151c-45fe-acf3-0268d0d563c1(com.mbeddr.formal.nusmv.tests.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="2ocj" ref="r:0af55dc0-14f5-45c8-bf12-3c673ca075ac(com.mbeddr.formal.base.tooling.analyzer)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="6339244025081158986" name="needsNoWriteAction" index="3OwPAg" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil">
      <concept id="6451706574537082687" name="com.mbeddr.mpsutil.blutil.structure.ShortStaticMethodCall" flags="ng" index="NRdvd" />
      <concept id="5753587520027641499" name="com.mbeddr.mpsutil.blutil.structure.SafeReadAction" flags="ng" index="3kxDZ6">
        <child id="5753587520027644759" name="body" index="3kxCCa" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="1lH9Xt" id="6mm$FLYRu$g">
    <property role="TrG5h" value="_010_defines_tests" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="6mm$FLYRvvo" role="1SL9yI">
      <property role="TrG5h" value="test_define_tests_001" />
      <node concept="3cqZAl" id="6mm$FLYRvvp" role="3clF45" />
      <node concept="3clFbS" id="6mm$FLYRvvt" role="3clF47">
        <node concept="3cpWs8" id="6mm$FLYSyMF" role="3cqZAp">
          <node concept="3cpWsn" id="6mm$FLYSyMG" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="6mm$FLYSyME" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="6mm$FLYTOLu" role="33vP2m">
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <node concept="Xl_RD" id="6mm$FLYTOLv" role="37wK5m">
                <property role="Xl_RC" value="_010_defines_tests" />
              </node>
              <node concept="Xl_RD" id="6mm$FLYTOLw" role="37wK5m">
                <property role="Xl_RC" value="define_tests_001" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="6mm$FLYSyTg" role="3cqZAp">
          <node concept="2OqwBi" id="6mm$FLYSz0K" role="3vwVQn">
            <node concept="37vLTw" id="6mm$FLYSyUC" role="2Oq$k0">
              <ref role="3cqZAo" node="6mm$FLYSyMG" resolve="res" />
            </node>
            <node concept="liA8E" id="6mm$FLYSzbl" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6mm$FLYTOMw" role="1SL9yI">
      <property role="TrG5h" value="test_define_tests_002" />
      <node concept="3cqZAl" id="6mm$FLYTOMx" role="3clF45" />
      <node concept="3clFbS" id="6mm$FLYTOMy" role="3clF47">
        <node concept="3cpWs8" id="6mm$FLYTOMz" role="3cqZAp">
          <node concept="3cpWsn" id="6mm$FLYTOM$" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="6mm$FLYTOM_" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="6mm$FLYTOMA" role="33vP2m">
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <node concept="Xl_RD" id="6mm$FLYTOMB" role="37wK5m">
                <property role="Xl_RC" value="_010_defines_tests" />
              </node>
              <node concept="Xl_RD" id="6mm$FLYTOMC" role="37wK5m">
                <property role="Xl_RC" value="define_tests_002" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="6mm$FLYTOMD" role="3cqZAp">
          <node concept="2OqwBi" id="6mm$FLYTOME" role="3vwVQn">
            <node concept="37vLTw" id="6mm$FLYTOMF" role="2Oq$k0">
              <ref role="3cqZAo" node="6mm$FLYTOM$" resolve="res" />
            </node>
            <node concept="liA8E" id="6mm$FLYTOMG" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="6mm$FLYTORd" role="1SL9yI">
      <property role="TrG5h" value="test_define_tests_003" />
      <node concept="3cqZAl" id="6mm$FLYTORe" role="3clF45" />
      <node concept="3clFbS" id="6mm$FLYTORf" role="3clF47">
        <node concept="3cpWs8" id="6mm$FLYTORg" role="3cqZAp">
          <node concept="3cpWsn" id="6mm$FLYTORh" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="6mm$FLYTORi" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="6mm$FLYTORj" role="33vP2m">
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <node concept="Xl_RD" id="6mm$FLYTORk" role="37wK5m">
                <property role="Xl_RC" value="_010_defines_tests" />
              </node>
              <node concept="Xl_RD" id="6mm$FLYTORl" role="37wK5m">
                <property role="Xl_RC" value="define_tests_003" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="6mm$FLYTORm" role="3cqZAp">
          <node concept="2OqwBi" id="6mm$FLYTORn" role="3vwVQn">
            <node concept="37vLTw" id="6mm$FLYTORo" role="2Oq$k0">
              <ref role="3cqZAo" node="6mm$FLYTORh" resolve="res" />
            </node>
            <node concept="liA8E" id="6mm$FLYTORp" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6mm$FLYRuDI">
    <property role="TrG5h" value="Utils" />
    <node concept="2tJIrI" id="6mm$FLYRuJq" role="jymVt" />
    <node concept="2YIFZL" id="6mm$FLYRvux" role="jymVt">
      <property role="TrG5h" value="runNuSMVOnTest" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6mm$FLYRvu$" role="3clF47">
        <node concept="3cpWs8" id="6mm$FLYRw0D" role="3cqZAp">
          <node concept="3cpWsn" id="6mm$FLYRw0E" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="H_c77" id="6mm$FLYRw0C" role="1tU5fm" />
            <node concept="BaHAS" id="6mm$FLYRw0F" role="33vP2m">
              <property role="BaHAW" value="test.mbeddr.formal.nusmv.tests" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6mm$FLYRO$E" role="3cqZAp">
          <node concept="3cpWsn" id="6mm$FLYRO$F" role="3cpWs9">
            <property role="TrG5h" value="testCase" />
            <node concept="3Tqbb2" id="6mm$FLYRO$$" role="1tU5fm">
              <ref role="ehGHo" to="fnq2:43FRfGJUEtT" resolve="TestCase" />
            </node>
          </node>
        </node>
        <node concept="3kxDZ6" id="6mm$FLYSHPN" role="3cqZAp">
          <node concept="9aQIb" id="6mm$FLYSI9V" role="3kxCCa">
            <node concept="3clFbS" id="6mm$FLYSI9X" role="9aQI4">
              <node concept="3cpWs8" id="6mm$FLYRCMZ" role="3cqZAp">
                <node concept="3cpWsn" id="6mm$FLYRCN0" role="3cpWs9">
                  <property role="TrG5h" value="coll" />
                  <node concept="3Tqbb2" id="6mm$FLYRCMS" role="1tU5fm">
                    <ref role="ehGHo" to="fnq2:43FRfGJUEcN" resolve="TestsCollection" />
                  </node>
                  <node concept="2OqwBi" id="6mm$FLYRCN1" role="33vP2m">
                    <node concept="2OqwBi" id="6mm$FLYRCN2" role="2Oq$k0">
                      <node concept="37vLTw" id="6mm$FLYRCN3" role="2Oq$k0">
                        <ref role="3cqZAo" node="6mm$FLYRw0E" resolve="m" />
                      </node>
                      <node concept="2RRcyG" id="6mm$FLYRCN4" role="2OqNvi">
                        <ref role="2RRcyH" to="fnq2:43FRfGJUEcN" resolve="TestsCollection" />
                      </node>
                    </node>
                    <node concept="1z4cxt" id="6mm$FLYRCN5" role="2OqNvi">
                      <node concept="1bVj0M" id="6mm$FLYRCN6" role="23t8la">
                        <node concept="3clFbS" id="6mm$FLYRCN7" role="1bW5cS">
                          <node concept="3clFbF" id="6mm$FLYRCN8" role="3cqZAp">
                            <node concept="2OqwBi" id="6mm$FLYRCN9" role="3clFbG">
                              <node concept="2OqwBi" id="6mm$FLYRCNa" role="2Oq$k0">
                                <node concept="37vLTw" id="6mm$FLYRCNb" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6mm$FLYRCNf" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="6mm$FLYRCNc" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6mm$FLYRCNd" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                <node concept="37vLTw" id="6mm$FLYRCNe" role="37wK5m">
                                  <ref role="3cqZAo" node="6mm$FLYRv_D" resolve="testCollectionName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6mm$FLYRCNf" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6mm$FLYRCNg" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6mm$FLYSFDa" role="3cqZAp">
                <node concept="37vLTI" id="6mm$FLYSFDc" role="3clFbG">
                  <node concept="2OqwBi" id="6mm$FLYRO$G" role="37vLTx">
                    <node concept="2OqwBi" id="6mm$FLYRO$H" role="2Oq$k0">
                      <node concept="37vLTw" id="6mm$FLYRO$I" role="2Oq$k0">
                        <ref role="3cqZAo" node="6mm$FLYRCN0" resolve="coll" />
                      </node>
                      <node concept="2Rf3mk" id="6mm$FLYRO$J" role="2OqNvi">
                        <node concept="1xMEDy" id="6mm$FLYRO$K" role="1xVPHs">
                          <node concept="chp4Y" id="6mm$FLYRO$L" role="ri$Ld">
                            <ref role="cht4Q" to="fnq2:43FRfGJUEtT" resolve="TestCase" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1z4cxt" id="6mm$FLYRO$M" role="2OqNvi">
                      <node concept="1bVj0M" id="6mm$FLYRO$N" role="23t8la">
                        <node concept="3clFbS" id="6mm$FLYRO$O" role="1bW5cS">
                          <node concept="3clFbF" id="6mm$FLYRO$P" role="3cqZAp">
                            <node concept="2OqwBi" id="6mm$FLYRO$Q" role="3clFbG">
                              <node concept="2OqwBi" id="6mm$FLYRO$R" role="2Oq$k0">
                                <node concept="37vLTw" id="6mm$FLYRO$S" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6mm$FLYRO$W" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="6mm$FLYRO$T" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6mm$FLYRO$U" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                <node concept="37vLTw" id="6mm$FLYRO$V" role="37wK5m">
                                  <ref role="3cqZAo" node="6mm$FLYRvG$" resolve="testCaseName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6mm$FLYRO$W" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6mm$FLYRO$X" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6mm$FLYSFDg" role="37vLTJ">
                    <ref role="3cqZAo" node="6mm$FLYRO$F" resolve="testCase" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6mm$FLYRQM8" role="3cqZAp">
          <node concept="3cpWsn" id="6mm$FLYRQM9" role="3cpWs9">
            <property role="TrG5h" value="an" />
            <node concept="3uibUv" id="6mm$FLYRQMa" role="1tU5fm">
              <ref role="3uigEE" to="4c75:1ZsZb$iMIJb" resolve="NuSMVTestAnalyzer" />
            </node>
            <node concept="2ShNRf" id="6mm$FLYRQVw" role="33vP2m">
              <node concept="1pGfFk" id="6mm$FLYRRi9" role="2ShVmc">
                <ref role="37wK5l" to="4c75:1ZsZb$iMIJn" resolve="NuSMVTestAnalyzer" />
                <node concept="2ShNRf" id="6mm$FLYRRkS" role="37wK5m">
                  <node concept="HV5vD" id="6mm$FLYRSdS" role="2ShVmc">
                    <ref role="HV5vE" to="2ocj:HmUOIGARns" resolve="EmptyToolAdapter" />
                  </node>
                </node>
                <node concept="2ShNRf" id="6mm$FLYS4wq" role="37wK5m">
                  <node concept="HV5vD" id="6mm$FLYS5h6" role="2ShVmc">
                    <ref role="HV5vE" to="xygl:~EmptyProgressIndicator" resolve="EmptyProgressIndicator" />
                  </node>
                </node>
                <node concept="10Nm6u" id="6mm$FLYS5IN" role="37wK5m" />
                <node concept="37vLTw" id="6mm$FLYS66m" role="37wK5m">
                  <ref role="3cqZAo" node="6mm$FLYRO$F" resolve="testCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6mm$FLYSlV_" role="3cqZAp">
          <node concept="3cpWsn" id="6mm$FLYSlVA" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="_YKpA" id="6mm$FLYSlVa" role="1tU5fm">
              <node concept="3uibUv" id="6mm$FLYSlVd" role="_ZDj9">
                <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="6mm$FLYShBx" role="3cqZAp">
          <node concept="3clFbS" id="6mm$FLYShBy" role="SfCbr">
            <node concept="3clFbF" id="6mm$FLYTiGk" role="3cqZAp">
              <node concept="2OqwBi" id="6mm$FLYTjpq" role="3clFbG">
                <node concept="37vLTw" id="6mm$FLYTiGi" role="2Oq$k0">
                  <ref role="3cqZAo" node="6mm$FLYRQM9" resolve="an" />
                </node>
                <node concept="liA8E" id="6mm$FLYTl8Z" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~SwingWorker.execute():void" resolve="execute" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6mm$FLYSnAa" role="3cqZAp">
              <node concept="37vLTI" id="6mm$FLYSnAc" role="3clFbG">
                <node concept="2OqwBi" id="6mm$FLYSlVB" role="37vLTx">
                  <node concept="37vLTw" id="6mm$FLYSlVC" role="2Oq$k0">
                    <ref role="3cqZAo" node="6mm$FLYRQM9" resolve="an" />
                  </node>
                  <node concept="liA8E" id="6mm$FLYSlVD" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~SwingWorker.get(long,java.util.concurrent.TimeUnit):java.lang.Object" resolve="get" />
                    <node concept="3cmrfG" id="6mm$FLYSlVE" role="37wK5m">
                      <property role="3cmrfH" value="30" />
                    </node>
                    <node concept="Rm8GO" id="6mm$FLYSlVF" role="37wK5m">
                      <ref role="Rm8GQ" to="5zyv:~TimeUnit.SECONDS" resolve="SECONDS" />
                      <ref role="1Px2BO" to="5zyv:~TimeUnit" resolve="TimeUnit" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6mm$FLYSnAg" role="37vLTJ">
                  <ref role="3cqZAo" node="6mm$FLYSlVA" resolve="results" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6mm$FLYSt$4" role="3cqZAp">
              <node concept="2OqwBi" id="6mm$FLYSuOR" role="3cqZAk">
                <node concept="37vLTw" id="6mm$FLYSu7W" role="2Oq$k0">
                  <ref role="3cqZAo" node="6mm$FLYSlVA" resolve="results" />
                </node>
                <node concept="1uHKPH" id="6mm$FLYSwyF" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6mm$FLYShBl" role="TEbGg">
            <node concept="3clFbS" id="6mm$FLYShBm" role="TDEfX">
              <node concept="3clFbF" id="6mm$FLYSk4u" role="3cqZAp">
                <node concept="2OqwBi" id="6mm$FLYSkes" role="3clFbG">
                  <node concept="37vLTw" id="6mm$FLYSk4t" role="2Oq$k0">
                    <ref role="3cqZAo" node="6mm$FLYShBn" resolve="e" />
                  </node>
                  <node concept="liA8E" id="6mm$FLYSl6M" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace():void" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6mm$FLYShBn" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="6mm$FLYSjWE" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6mm$FLYSxmJ" role="3cqZAp">
          <node concept="10Nm6u" id="6mm$FLYSxCX" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6mm$FLYRuJK" role="1B3o_S" />
      <node concept="3uibUv" id="6mm$FLYRuKl" role="3clF45">
        <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
      </node>
      <node concept="37vLTG" id="6mm$FLYRv_D" role="3clF46">
        <property role="TrG5h" value="testCollectionName" />
        <node concept="17QB3L" id="6mm$FLYRv_C" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6mm$FLYRvG$" role="3clF46">
        <property role="TrG5h" value="testCaseName" />
        <node concept="17QB3L" id="6mm$FLYRvMw" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6mm$FLYRuDJ" role="1B3o_S" />
  </node>
  <node concept="1lH9Xt" id="6mm$FLZ2b9r">
    <property role="TrG5h" value="_020_assigns_tests" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="6mm$FLZ2b9s" role="1SL9yI">
      <property role="TrG5h" value="test_assign_tests_001" />
      <node concept="3cqZAl" id="6mm$FLZ2b9t" role="3clF45" />
      <node concept="3clFbS" id="6mm$FLZ2b9u" role="3clF47">
        <node concept="3cpWs8" id="6mm$FLZ2b9v" role="3cqZAp">
          <node concept="3cpWsn" id="6mm$FLZ2b9w" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="6mm$FLZ2b9x" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="6mm$FLZ2b9y" role="33vP2m">
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <node concept="Xl_RD" id="6mm$FLZ2b9z" role="37wK5m">
                <property role="Xl_RC" value="_020_assign_tests" />
              </node>
              <node concept="Xl_RD" id="6mm$FLZ2b9$" role="37wK5m">
                <property role="Xl_RC" value="_020_assign_test1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="6mm$FLZ2b9_" role="3cqZAp">
          <node concept="2OqwBi" id="6mm$FLZ2b9A" role="3vwVQn">
            <node concept="37vLTw" id="6mm$FLZ2b9B" role="2Oq$k0">
              <ref role="3cqZAo" node="6mm$FLZ2b9w" resolve="res" />
            </node>
            <node concept="liA8E" id="6mm$FLZ2b9C" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="2xeYpNCiMKK">
    <property role="TrG5h" value="_021_assign_case_tests" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="2xeYpNCiMKL" role="1SL9yI">
      <property role="TrG5h" value="test_assign_test1" />
      <node concept="3cqZAl" id="2xeYpNCiMKM" role="3clF45" />
      <node concept="3clFbS" id="2xeYpNCiMKN" role="3clF47">
        <node concept="3cpWs8" id="2xeYpNCiMKO" role="3cqZAp">
          <node concept="3cpWsn" id="2xeYpNCiMKP" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="2xeYpNCiMKQ" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="2xeYpNCiMKR" role="33vP2m">
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <node concept="Xl_RD" id="2xeYpNCiMKS" role="37wK5m">
                <property role="Xl_RC" value="_021_assign_case_tests" />
              </node>
              <node concept="Xl_RD" id="2xeYpNCiMKT" role="37wK5m">
                <property role="Xl_RC" value="assign_test1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2xeYpNCiMKU" role="3cqZAp">
          <node concept="2OqwBi" id="2xeYpNCiMKV" role="3vwVQn">
            <node concept="37vLTw" id="2xeYpNCiMKW" role="2Oq$k0">
              <ref role="3cqZAo" node="2xeYpNCiMKP" resolve="res" />
            </node>
            <node concept="liA8E" id="2xeYpNCiMKX" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="2xeYpNCiR2T">
    <property role="TrG5h" value="_100_arch_tests" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="2xeYpNCiR2U" role="1SL9yI">
      <property role="TrG5h" value="test_container_of_add1_test1" />
      <node concept="3cqZAl" id="2xeYpNCiR2V" role="3clF45" />
      <node concept="3clFbS" id="2xeYpNCiR2W" role="3clF47">
        <node concept="3cpWs8" id="2xeYpNCiR2X" role="3cqZAp">
          <node concept="3cpWsn" id="2xeYpNCiR2Y" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="2xeYpNCiR2Z" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="2xeYpNCiR30" role="33vP2m">
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <node concept="Xl_RD" id="2xeYpNCiR31" role="37wK5m">
                <property role="Xl_RC" value="_100_arch_tests" />
              </node>
              <node concept="Xl_RD" id="2xeYpNCiR32" role="37wK5m">
                <property role="Xl_RC" value="container_of_add1_test1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2xeYpNCiR33" role="3cqZAp">
          <node concept="2OqwBi" id="2xeYpNCiR34" role="3vwVQn">
            <node concept="37vLTw" id="2xeYpNCiR35" role="2Oq$k0">
              <ref role="3cqZAo" node="2xeYpNCiR2Y" resolve="res" />
            </node>
            <node concept="liA8E" id="2xeYpNCiR36" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="2xeYpNCiRV0" role="1SL9yI">
      <property role="TrG5h" value="test_chain_of_two_modules_test1" />
      <node concept="3cqZAl" id="2xeYpNCiRV1" role="3clF45" />
      <node concept="3clFbS" id="2xeYpNCiRV2" role="3clF47">
        <node concept="3cpWs8" id="2xeYpNCiRV3" role="3cqZAp">
          <node concept="3cpWsn" id="2xeYpNCiRV4" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="2xeYpNCiRV5" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="2xeYpNCiRV6" role="33vP2m">
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <node concept="Xl_RD" id="2xeYpNCiRV7" role="37wK5m">
                <property role="Xl_RC" value="_100_arch_tests" />
              </node>
              <node concept="Xl_RD" id="2xeYpNCiRV8" role="37wK5m">
                <property role="Xl_RC" value="chain_of_two_modules_test1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2xeYpNCiRV9" role="3cqZAp">
          <node concept="2OqwBi" id="2xeYpNCiRVa" role="3vwVQn">
            <node concept="37vLTw" id="2xeYpNCiRVb" role="2Oq$k0">
              <ref role="3cqZAo" node="2xeYpNCiRV4" resolve="res" />
            </node>
            <node concept="liA8E" id="2xeYpNCiRVc" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="2xeYpNCkLj7">
    <property role="TrG5h" value="_200_sm_tests" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="2xeYpNCkLj8" role="1SL9yI">
      <property role="TrG5h" value="test_sm_test1" />
      <node concept="3cqZAl" id="2xeYpNCkLj9" role="3clF45" />
      <node concept="3clFbS" id="2xeYpNCkLja" role="3clF47">
        <node concept="3cpWs8" id="2xeYpNCkLjb" role="3cqZAp">
          <node concept="3cpWsn" id="2xeYpNCkLjc" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="2xeYpNCkLjd" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="2xeYpNCkLje" role="33vP2m">
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <node concept="Xl_RD" id="2xeYpNCkLjf" role="37wK5m">
                <property role="Xl_RC" value="_200_sm_tests" />
              </node>
              <node concept="Xl_RD" id="2xeYpNCkLjg" role="37wK5m">
                <property role="Xl_RC" value="sm_test1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2xeYpNCkLjh" role="3cqZAp">
          <node concept="2OqwBi" id="2xeYpNCkLji" role="3vwVQn">
            <node concept="37vLTw" id="2xeYpNCkLjj" role="2Oq$k0">
              <ref role="3cqZAo" node="2xeYpNCkLjc" resolve="res" />
            </node>
            <node concept="liA8E" id="2xeYpNCkLjk" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="1gJVC85Ljn6">
    <property role="TrG5h" value="_050_macros_tests" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="1gJVC85Ljn7" role="1SL9yI">
      <property role="TrG5h" value="test_macros" />
      <node concept="3cqZAl" id="1gJVC85Ljn8" role="3clF45" />
      <node concept="3clFbS" id="1gJVC85Ljn9" role="3clF47">
        <node concept="3cpWs8" id="1gJVC85Ljna" role="3cqZAp">
          <node concept="3cpWsn" id="1gJVC85Ljnb" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="1gJVC85Ljnc" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="1gJVC85Ljnd" role="33vP2m">
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <node concept="Xl_RD" id="1gJVC85Ljne" role="37wK5m">
                <property role="Xl_RC" value="_050_macros_tests" />
              </node>
              <node concept="Xl_RD" id="1gJVC85Ljnf" role="37wK5m">
                <property role="Xl_RC" value="macros_test1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="1gJVC85Ljng" role="3cqZAp">
          <node concept="2OqwBi" id="1gJVC85Ljnh" role="3vwVQn">
            <node concept="37vLTw" id="1gJVC85Ljni" role="2Oq$k0">
              <ref role="3cqZAo" node="1gJVC85Ljnb" resolve="res" />
            </node>
            <node concept="liA8E" id="1gJVC85Ljnj" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cMX" resolve="isSuccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="1gJVC85Lt8Y">
    <property role="TrG5h" value="_000_tests_running_tests" />
    <property role="3OwPAg" value="true" />
    <node concept="1LZb2c" id="1gJVC85Lt8Z" role="1SL9yI">
      <property role="TrG5h" value="test_spec_for_test_is_properly_found_001" />
      <node concept="3cqZAl" id="1gJVC85Lt90" role="3clF45" />
      <node concept="3clFbS" id="1gJVC85Lt91" role="3clF47">
        <node concept="3cpWs8" id="1gJVC85Lt92" role="3cqZAp">
          <node concept="3cpWsn" id="1gJVC85Lt93" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="1gJVC85Lt94" role="1tU5fm">
              <ref role="3uigEE" to="4c75:7mSH3Wn4c5n" resolve="NuSMVLiftedResult" />
            </node>
            <node concept="NRdvd" id="1gJVC85Lt95" role="33vP2m">
              <ref role="1Pybhc" node="6mm$FLYRuDI" resolve="Utils" />
              <ref role="37wK5l" node="6mm$FLYRvux" resolve="runNuSMVOnTest" />
              <node concept="Xl_RD" id="1gJVC85Lt96" role="37wK5m">
                <property role="Xl_RC" value="_000_tests_running_tests" />
              </node>
              <node concept="Xl_RD" id="1gJVC85Lt97" role="37wK5m">
                <property role="Xl_RC" value="tests_running_tests__fail_in_second_step_001" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gJVC85MyHt" role="3cqZAp" />
        <node concept="3clFbF" id="1gJVC85Mz59" role="3cqZAp">
          <node concept="2OqwBi" id="1gJVC85Mz56" role="3clFbG">
            <node concept="10M0yZ" id="1gJVC85Mz57" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
            </node>
            <node concept="liA8E" id="1gJVC85Mz58" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="2OqwBi" id="1gJVC85MzhB" role="37wK5m">
                <node concept="37vLTw" id="1gJVC85Mz71" role="2Oq$k0">
                  <ref role="3cqZAo" node="1gJVC85Lt93" resolve="res" />
                </node>
                <node concept="liA8E" id="1gJVC85Mzu6" role="2OqNvi">
                  <ref role="37wK5l" to="4c75:7mSH3Wn4cMJ" resolve="getUserFriendlyMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gJVC85Mzxe" role="3cqZAp" />
        <node concept="3vwNmj" id="1gJVC85Lt98" role="3cqZAp">
          <node concept="2OqwBi" id="1gJVC85Lt99" role="3vwVQn">
            <node concept="37vLTw" id="1gJVC85Lt9a" role="2Oq$k0">
              <ref role="3cqZAo" node="1gJVC85Lt93" resolve="res" />
            </node>
            <node concept="liA8E" id="1gJVC85Lt9b" role="2OqNvi">
              <ref role="37wK5l" to="4c75:7mSH3Wn4cN6" resolve="isFail" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="6Kf5KB75Mz6">
    <property role="2XOHcw" value="${mbeddr.formal.home}/code/languages/com.mbeddr.formal.nusmv/" />
  </node>
</model>

